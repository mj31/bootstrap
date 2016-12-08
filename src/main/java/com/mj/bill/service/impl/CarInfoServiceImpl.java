package com.mj.bill.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.bill.dao.ICarInfoDao;
import com.mj.bill.vo.CarInfo;
import com.mj.bill.service.ICarInfoService;

@Service("carInfoService")
public class CarInfoServiceImpl implements ICarInfoService {
	
	@Resource
	private ICarInfoDao carInfoDao;

	
	@Override
	public List<CarInfo> queryCarInfoByCondition(CarInfo carInfo) {
		return carInfoDao.queryCarInfoByCondition(carInfo);
	}
	

	@Override
	public Integer queryCarInfoByConditionTotal(CarInfo carInfo) {
		return carInfoDao.queryCarInfoByConditionTotal(carInfo);
	}


} 
