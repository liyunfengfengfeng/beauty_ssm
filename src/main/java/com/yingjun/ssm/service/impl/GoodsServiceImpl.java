package com.yingjun.ssm.service.impl;


import com.yingjun.ssm.entity.Goods;

import com.yingjun.ssm.service.GoodsService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;


@Service
public class GoodsServiceImpl implements GoodsService {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());



	@Override
	public List<Goods> getGoodsList(int offset, int limit) {

		return  null;
	}

	@Transactional
	@Override
	public void buyGoods(long userPhone, long goodsId, boolean useProcedure) {
	}

}
