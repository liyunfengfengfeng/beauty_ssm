package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.PictureDao;
import com.yingjun.ssm.entity.Picture;
import com.yingjun.ssm.service.PictureService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Service
public class PictureServiceImpl implements PictureService{
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private PictureDao pictureDao;
    @Override
    public long getPictureRowCount(){
        return pictureDao.getPictureRowCount();
    }
    @Override
    public List<Picture> selectPicture(){
        return pictureDao.selectPicture();
    }
    @Override
    public Picture selectPictureByObj(Picture obj){
        return pictureDao.selectPictureByObj(obj);
    }
    @Override
    public Picture selectPictureById(Integer id){
        return pictureDao.selectPictureById(id);
    }
    @Override
    public int insertPicture(Picture value){
        return pictureDao.insertPicture(value);
    }
    @Override
    public int insertNonEmptyPicture(Picture value){
        return pictureDao.insertNonEmptyPicture(value);
    }
    @Override
    public int insertPictureByBatch(List<Picture> value){
        return pictureDao.insertPictureByBatch(value);
    }
    @Override
    public int deletePictureById(Integer id){
        return pictureDao.deletePictureById(id);
    }
    @Override
    public int updatePictureById(Picture enti){
        return pictureDao.updatePictureById(enti);
    }
    @Override
    public int updateNonEmptyPictureById(Picture enti){
        return pictureDao.updateNonEmptyPictureById(enti);
    }

    /**
     * 更新logo图片
     * @param file
     */
    @Override
    public void updateLogoPicture(MultipartFile file) {
        try{
//MultipartFile转换file
            CommonsMultipartFile cf= (CommonsMultipartFile)file;
            //           DiskFileItem fi = (DiskFileItem)cf.getFileItem();
            //           File tempFile = fi.getStoreLocation();
            if(file != null){
                //原始资源名字
                String fileFileName = cf.getOriginalFilename();
                //判断文件类型
                String allowType = "gif,jpg,bmp,png";
                if (!fileFileName.trim().equals("") && fileFileName.length() > 0) {
                    String ex = fileFileName.substring(fileFileName.lastIndexOf(".") + 1, fileFileName.length());
                    if(allowType.toString().indexOf(ex.toLowerCase()) < 0){
                        throw new RuntimeException("对不起,只能上传gif,jpg,bmp,png格式的图片！");
                    }
                }
            }
            Picture picture = new Picture();
            picture.setUrl(file.getBytes());
            if(1 != pictureDao.updateLogoPicture(picture)){
                throw new RuntimeException("保存logo图片信息影响行数不为1");
            }
        }catch(Exception e){
            LOG.error("保存logo图片信息异常",e);
            throw new RuntimeException(e);
        }
    }

    /**
     * 通过id查询logo图片信息
     * @param id logo id
     * @return
     */
    @Override
    public Picture findPictureById(int id) {

        return pictureDao.selectPictureById(1);
    }

    /**
     * 更新banner图片
     * @param file
     */
    @Override
    public void updateBannerPicture(MultipartFile file) {
        try{
//MultipartFile转换file
            CommonsMultipartFile cf= (CommonsMultipartFile)file;
            //           DiskFileItem fi = (DiskFileItem)cf.getFileItem();
            //           File tempFile = fi.getStoreLocation();
            if(file != null){
                //原始资源名字
                String fileFileName = cf.getOriginalFilename();
                //判断文件类型
                String allowType = "gif,jpg,bmp,png";
                if (!fileFileName.trim().equals("") && fileFileName.length() > 0) {
                    String ex = fileFileName.substring(fileFileName.lastIndexOf(".") + 1, fileFileName.length());
                    if(allowType.toString().indexOf(ex.toLowerCase()) < 0){
                        throw new RuntimeException("对不起,只能上传gif,jpg,bmp,png格式的图片！");
                    }
                }
            }
            Picture picture = new Picture();
            picture.setUrl(file.getBytes());
            if(1 != pictureDao.updateBannerPicture(picture)){
                throw new RuntimeException("保存logo图片信息影响行数不为1");
            }
        }catch(Exception e){
            LOG.error("保存logo图片信息异常",e);
            throw new RuntimeException(e);
        }
    }

    /**
     * 更新new图片
     * @param file
     */
    @Override
    public void updateNewPicture(MultipartFile file) {
        try{
//MultipartFile转换file
            CommonsMultipartFile cf= (CommonsMultipartFile)file;
            //           DiskFileItem fi = (DiskFileItem)cf.getFileItem();
            //           File tempFile = fi.getStoreLocation();
            if(file != null){
                //原始资源名字
                String fileFileName = cf.getOriginalFilename();
                //判断文件类型
                String allowType = "gif,jpg,bmp,png";
                if (!fileFileName.trim().equals("") && fileFileName.length() > 0) {
                    String ex = fileFileName.substring(fileFileName.lastIndexOf(".") + 1, fileFileName.length());
                    if(allowType.toString().indexOf(ex.toLowerCase()) < 0){
                        throw new RuntimeException("对不起,只能上传gif,jpg,bmp,png格式的图片！");
                    }
                }
            }
            Picture picture = new Picture();
            picture.setUrl(file.getBytes());
            if(1 != pictureDao.updateNewPicture(picture)){
                throw new RuntimeException("保存logo图片信息影响行数不为1");
            }
        }catch(Exception e){
            LOG.error("保存logo图片信息异常",e);
            throw new RuntimeException(e);
        }
    }

    public PictureDao getPictureDao() {
        return this.pictureDao;
    }

    public void setPictureDao(PictureDao pictureDao) {
        this.pictureDao = pictureDao;
    }

}