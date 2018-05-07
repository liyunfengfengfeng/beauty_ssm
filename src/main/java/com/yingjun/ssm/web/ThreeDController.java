package com.yingjun.ssm.web;



import com.yingjun.ssm.entity.Picture;
import com.yingjun.ssm.service.PictureService;
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
 * 58行代码实现3D相册
 * @author liyunfeng
 */
@Controller
@RequestMapping("/3dController")
public class ThreeDController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PictureService pictureService;
    /**
     * 58行代码实现3D相册
     * @return
     */
    @RequestMapping(value = "/to3DPage")
    public String toLogoManager() {
        return "/3DPicture/3dPage";
    }

}
