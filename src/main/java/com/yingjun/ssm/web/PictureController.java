package com.yingjun.ssm.web;



import com.yingjun.ssm.entity.Picture;
import com.yingjun.ssm.service.PictureService;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * 图片管理
 * @author liyunfeng
 */
@Controller
@RequestMapping("/picture")
public class PictureController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PictureService pictureService;
    /**
     * 到达系统logo管理界面
     * @return
     */
    @RequestMapping(value = "/toLogoManager")
    public String toLogoManager() {
        return "/adminPicture/logoManager";
    }

    /**
     * 更新系统logo显示的logo图片
     * @return
     */
    @RequestMapping(value = "/updateLogoPicture")
    public String updateLogoPicture(@RequestParam MultipartFile file, Model view) {
        try {
            pictureService.updateLogoPicture(file);
            view.addAttribute("MSG", "保存成功");
        } catch (Exception e) {
            LOG.error("PictureController.updateLogoPicture.Exception", e);
            view.addAttribute("MSG", "保存失败");
        }
        return "/adminPicture/logoManager";
    }

    /**

     * 获取图片展示

     *@author liyunfeng

     * 2017年11月10日

     * @paramid

     * @paramresponse

     *@throws

     */

    @RequestMapping(value="/getLogo",method= RequestMethod.GET)

    public void getPhotoById(@RequestParam(required=true)Long id, final HttpServletResponse response){

        try{

            int width = 800;

            int height = 300;

            Picture picture = pictureService.findPictureById(1);

            if(picture != null){

                byte[] data = picture.getUrl();

                if (width != 0 && height != 0){

                    BufferedImage buffered_oldImage = ImageIO.read(new ByteArrayInputStream(data));

                    int imageOldWidth =buffered_oldImage.getWidth();

                    int imageOldHeight =buffered_oldImage.getHeight();

                    double scale_x = (double) width /imageOldWidth;

                    double scale_y = (double) height /imageOldHeight;

                    double scale_xy = Math.min(scale_x,scale_y);

                    int imageNewWidth = (int)(imageOldWidth * scale_xy);

                    int imageNewHeight = (int)(imageOldHeight * scale_xy);

                    BufferedImage buffered_newImage =new BufferedImage(imageNewWidth, imageNewHeight,BufferedImage.TYPE_INT_RGB);

                    buffered_newImage.getGraphics().drawImage(buffered_oldImage.getScaledInstance(imageNewWidth,imageNewHeight, BufferedImage.SCALE_SMOOTH), 0, 0, null);

                    buffered_newImage.getGraphics().dispose();

                    ByteArrayOutputStream outPutStream= new ByteArrayOutputStream();

                    ImageIO.write(buffered_newImage,"jpeg", outPutStream);

                    data =outPutStream.toByteArray();

                }

                response.setContentType("image/jpeg");

                response.setCharacterEncoding("UTF-8");

                OutputStream outputSream =response.getOutputStream();

                InputStream in = new ByteArrayInputStream(data);

                int len = 0;

                byte[] buf = new byte[1024];

                while ((len = in.read(buf, 0, 1024)) !=-1) {

                    outputSream.write(buf, 0,len);

                }

                outputSream.close();

            }else{

                LOG.info("查询发布内容图片信息不存在，广告Id=" + id);

            }

        }catch(Exception e){

            LOG.error("查询发布内容图片信息异常id=" + id , e);

        }



    }

}
