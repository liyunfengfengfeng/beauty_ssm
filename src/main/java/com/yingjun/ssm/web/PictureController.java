package com.yingjun.ssm.web;



import com.yingjun.ssm.service.PictureService;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

}
