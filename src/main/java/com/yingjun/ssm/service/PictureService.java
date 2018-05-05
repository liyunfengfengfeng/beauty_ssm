package com.yingjun.ssm.service;
import com.yingjun.ssm.entity.Picture;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
public interface PictureService{
	/**
	 * 获得Picture数据的总行数
	 * @return
	 */
    long getPictureRowCount();
	/**
	 * 获得Picture数据集合
	 * @return
	 */
    List<Picture> selectPicture();
	/**
	 * 获得一个Picture对象,以参数Picture对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Picture selectPictureByObj(Picture obj);
	/**
	 * 通过Picture的id获得Picture对象
	 * @param id
	 * @return
	 */
    Picture selectPictureById(Integer id);
	/**
	 * 插入Picture到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertPicture(Picture value);
	/**
	 * 插入Picture中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyPicture(Picture value);
	/**
	 * 批量插入Picture到数据库
	 * @param value
	 * @return
	 */
    int insertPictureByBatch(List<Picture> value);
	/**
	 * 通过Picture的id删除Picture
	 * @param id
	 * @return
	 */
    int deletePictureById(Integer id);
	/**
	 * 通过Picture的id更新Picture中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updatePictureById(Picture enti);
	/**
	 * 通过Picture的id更新Picture中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyPictureById(Picture enti);

	/**
	 * 更新logo图片
	 * @param file
	 */
    public void updateLogoPicture(MultipartFile file);

	/**
	 * 通过id查询logo图片信息
	 * @param id
	 * @return
	 */
	public Picture findPictureById(int id);
}