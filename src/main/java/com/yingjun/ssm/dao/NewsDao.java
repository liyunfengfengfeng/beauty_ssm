package com.yingjun.ssm.dao;
import com.yingjun.ssm.entity.News;
import java.util.List;
public interface NewsDao{
	/**
	 * 获得News数据的总行数
	 * @return
	 */
    long getNewsRowCount();
	/**
	 * 获得News数据集合
	 * @return
	 */
    List<News> selectNews();
	/**
	 * 获得一个News对象,以参数News对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    News selectNewsByObj(News obj);
	/**
	 * 通过News的id获得News对象
	 * @param id
	 * @return
	 */
    News selectNewsById(Integer id);
	/**
	 * 插入News到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertNews(News value);
	/**
	 * 插入News中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyNews(News value);
	/**
	 * 批量插入News到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertNewsByBatch(List<News> value);
	/**
	 * 通过News的id删除News
	 * @param id
	 * @return
	 */
    int deleteNewsById(Integer id);
	/**
	 * 通过News的id更新News中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateNewsById(News enti);
	/**
	 * 通过News的id更新News中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyNewsById(News enti);
}