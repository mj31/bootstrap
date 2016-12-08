package com.mj.bill.vo;

import com.mj.bill.common.Page;

public class CarInfo extends Page{
 
 
	 /**
     * 描述:主键     
     * 字段: id  INT(10)  
     */	
	private Integer id;
 
	 /**
     * 描述:主车号     
     * 字段: header_number  VARCHAR(10)  
     */	
	private String headerNumber;
 
	 /**
     * 描述:挂车号     
     * 字段: trailer_number  VARCHAR(10)  
     */	
	private String trailerNumber;
 
	 /**
     * 描述:车类型 0代表气头 1代表油头     
     * 字段: car_type  TINYINT UNSIGNED(3)  
     */	
	private Integer carType;
 
	 /**
     * 描述:行车证荷载量 单位t(吨)/100     
     * 字段: load  BIGINT(19)  
     */	
	private Long weight;
 
	 /**
     * 描述:槽车容量 单位m3/100     
     * 字段: capacity  BIGINT(19)  
     */	
	private Long capacity;
 
	 /**
     * 描述:随车电话     
     * 字段: car_phone  VARCHAR(20)  
     */	
	private String carPhone;
 
	 /**
     * 描述:驾驶员名字     
     * 字段: driver_name  VARCHAR(20)  
     */	
	private String driverName;
 
	 /**
     * 描述:驾驶员电话     
     * 字段: driver_phone  VARCHAR(20)  
     */	
	private String driverPhone;
 
	 /**
     * 描述:押运员名字     
     * 字段: follower_name  VARCHAR(20)  
     */	
	private String followerName;
 
	 /**
     * 描述:押运员电话     
     * 字段: follower_phone  VARCHAR(20)  
     */	
	private String followerPhone;
 
	 /**
     * 描述:备用电话     
     * 字段: backup_phone  VARCHAR(20)  
     */	
	private String backupPhone;
 
	 /**
     * 描述:车辆信息到期时间      
     * 字段: expired_date  DATETIME(19)  
     */	
	private Long expiredDate;
	
	private String strExpiredDate ;
	
	 /**
     * 描述:备注     
     * 字段: remark  VARCHAR(255)  
     */	
	private String remark;
	
	private Integer status ;
	



	public CarInfo(){
	}

	public CarInfo(
		Integer id
	){
		this.id = id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getId() {
		return this.id;
	}
	
    
    
	public void setHeaderNumber(String headerNumber) {
		this.headerNumber = headerNumber;
	}
	
	public String getHeaderNumber() {
		return this.headerNumber;
	}
	
    
    
	public void setTrailerNumber(String trailerNumber) {
		this.trailerNumber = trailerNumber;
	}
	
	public String getTrailerNumber() {
		return this.trailerNumber;
	}
	
    
    
	public void setCarType(Integer carType) {
		this.carType = carType;
	}
	
	public Integer getCarType() {
		return this.carType;
	}
	
    
	public void setCapacity(Long capacity) {
		this.capacity = capacity;
	}
	
	public Long getCapacity() {
		return this.capacity;
	}
	
    
    
	public void setCarPhone(String carPhone) {
		this.carPhone = carPhone;
	}
	
	public String getCarPhone() {
		return this.carPhone;
	}
	
    
    
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}
	
	public String getDriverName() {
		return this.driverName;
	}
	
    
    
	public void setDriverPhone(String driverPhone) {
		this.driverPhone = driverPhone;
	}
	
	public String getDriverPhone() {
		return this.driverPhone;
	}
	
    
    
	public void setFollowerName(String followerName) {
		this.followerName = followerName;
	}
	
	public String getFollowerName() {
		return this.followerName;
	}
	
    
    
	public void setFollowerPhone(String followerPhone) {
		this.followerPhone = followerPhone;
	}
	
	public String getFollowerPhone() {
		return this.followerPhone;
	}
	
    
    
	public void setBackupPhone(String backupPhone) {
		this.backupPhone = backupPhone;
	}
	
	public String getBackupPhone() {
		return this.backupPhone;
	}

	
	public Long getExpiredDate() {
		return expiredDate;
	}

	public void setExpiredDate(Long expiredDate) {
		this.expiredDate = expiredDate;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public String getRemark() {
		return this.remark;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Long getWeight() {
		return weight;
	}

	public void setWeight(Long weight) {
		this.weight = weight;
	}

	public String getStrExpiredDate() {
		return strExpiredDate;
	}

	public void setStrExpiredDate(String strExpiredDate) {
		this.strExpiredDate = strExpiredDate;
	}

}

