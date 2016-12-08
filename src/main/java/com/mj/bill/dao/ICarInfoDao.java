package com.mj.bill.dao;

import java.util.List;

import com.mj.bill.vo.CarInfo;

public interface ICarInfoDao {

	
	List<CarInfo> queryCarInfoByCondition(CarInfo carInfo);
	

	Integer queryCarInfoByConditionTotal(CarInfo carInfo);

	
}