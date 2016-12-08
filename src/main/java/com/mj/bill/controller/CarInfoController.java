package com.mj.bill.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.mj.bill.common.ResponseUtils;
import com.mj.bill.vo.CarInfo;
import com.mj.bill.service.ICarInfoService;

@Controller
@RequestMapping("/car")
public class CarInfoController {

	@Resource
	private ICarInfoService carInfoService;
	
	/**
	 * demo1页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/demo1")
	public String toIndex(HttpServletRequest request,HttpServletResponse response,Model model,CarInfo carInfo){
		model.addAttribute("carInfo", carInfo);
		return "demo/demo1";
	}

	/**
	 * demo1查询
	 * @param request
	 * @param response
	 * @param carInfo
	 */
	@RequestMapping(value = "/search1")
	/*@RequestMapping("/search1")*/
	@ResponseBody
	public void search(HttpServletRequest request,HttpServletResponse response,@RequestBody CarInfo carInfo){

		 List<CarInfo> carInfoList = this.carInfoService.queryCarInfoByCondition(carInfo);
		 
		 Integer total = this.carInfoService.queryCarInfoByConditionTotal(carInfo);

		 JSONObject json = new JSONObject();
		 json.put("rows",carInfoList);
		 json.put("total",total);
		 json.put("key","value");
	     ResponseUtils.responseJson(response, json.toString());
	}


	/**
	 * demo2页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/demo2")
	public String demo2(HttpServletRequest request,HttpServletResponse response,Model model,CarInfo carInfo){
		model.addAttribute("carInfo", carInfo);
		return "demo/demo2";
	}

	/**
	 * demo2查询
	 * @param request
	 * @param response
	 * @param carInfo
	 */
	@RequestMapping("/search2")
	@ResponseBody
	public void search2(HttpServletRequest request,HttpServletResponse response,CarInfo carInfo){

		List<CarInfo> carInfoList = this.carInfoService.queryCarInfoByCondition(carInfo);

		Integer total = this.carInfoService.queryCarInfoByConditionTotal(carInfo);

		JSONObject json = new JSONObject();
		json.put("data",carInfoList);
		ResponseUtils.responseJson(response, json.toString());
	}
	

}
