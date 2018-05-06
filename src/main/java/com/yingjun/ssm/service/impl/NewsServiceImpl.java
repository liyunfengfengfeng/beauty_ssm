package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.NewsDao;
import com.yingjun.ssm.entity.News;
import com.yingjun.ssm.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 处理首页新闻展示信息
 * @author liyunfeng
 */
@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsDao newsDao;
    @Override
    public long getNewsRowCount(){
        return newsDao.getNewsRowCount();
    }
    @Override
    public List<News> selectNews(){
        return newsDao.selectNews();
    }
    @Override
    public News selectNewsByObj(News obj){
        return newsDao.selectNewsByObj(obj);
    }
    @Override
    public News selectNewsById(Integer id){
        return newsDao.selectNewsById(id);
    }
    @Override
    public int insertNews(News value){
        return newsDao.insertNews(value);
    }
    @Override
    public int insertNonEmptyNews(News value){
        return newsDao.insertNonEmptyNews(value);
    }
    @Override
    public int insertNewsByBatch(List<News> value){
        return newsDao.insertNewsByBatch(value);
    }
    @Override
    public int deleteNewsById(Integer id){
        return newsDao.deleteNewsById(id);
    }
    @Override
    public int updateNewsById(News enti){
        return newsDao.updateNewsById(enti);
    }
    @Override
    public int updateNonEmptyNewsById(News enti){
        return newsDao.updateNonEmptyNewsById(enti);
    }

    public NewsDao getNewsDao() {
        return this.newsDao;
    }

    public void setNewsDao(NewsDao newsDao) {
        this.newsDao = newsDao;
    }

}