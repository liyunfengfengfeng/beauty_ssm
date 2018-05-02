package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.PictureDao;
import com.yingjun.ssm.entity.Picture;
import com.yingjun.ssm.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class PictureServiceImpl implements PictureService{
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

    public PictureDao getPictureDao() {
        return this.pictureDao;
    }

    public void setPictureDao(PictureDao pictureDao) {
        this.pictureDao = pictureDao;
    }

}