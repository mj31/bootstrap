package com.mj.bill.service;

import java.util.List;

import com.mj.bill.vo.CarInfo;

public interface ICarInfoService {
	
	List<CarInfo> queryCarInfoByCondition(CarInfo carInfo);

	Integer queryCarInfoByConditionTotal(CarInfo carInfo);


}
