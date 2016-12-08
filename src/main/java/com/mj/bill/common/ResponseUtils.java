package com.mj.bill.common;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;


public class ResponseUtils {
	/**
	      *
	     * @Title: responseJson
	     * @Description: JSON 格式 响应
	     * @param @param response
	     * @param @param res    响应字符串
	     * @return void    返回类型
	     * @throws
	      */
	     public static void responseJson(HttpServletResponse response,String res) {
	           try {
	               response.setContentType( "application/json;charset=UTF-8" );
	              response.setCharacterEncoding( "UTF-8");
	               PrintWriter out = response.getWriter();
	              out.write(res);
	              out.flush();
	          } catch (Exception e) {
	          }
	          
	     }


}
