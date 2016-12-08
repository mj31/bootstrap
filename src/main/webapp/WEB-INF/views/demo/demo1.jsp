<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
	<%@ include file="/common/header.jsp"%>
    <script type="text/javascript">
    $(function () {
    	
    	 //1.初始化Table
    	 var oTable = new TableInit();
    	 oTable.Init();
    	 
    	 // 添加弹出层
    	 $("#btn_add").click(function(){
    	     $('#add').modal();
    	 });
    	 
    	 //查询
    	 $("#btn_query").click(function(){
    		 $("#table").bootstrapTable('refresh', TableInit);
			 //$("#formSearch").submit();
    	 });
    	 
    	});
    	 
    	 
    	var TableInit = function () {
    	 var oTableInit = new Object();
    	  //初始化Table
    	  oTableInit.Init = function () {
    	  $('#table').bootstrapTable({
    	   url: '${ctx}/car/search1.do',   //请求后台的URL（*）
    	   method: 'post',      //请求方式（*）
    	   pagination: true,     //是否显示分页（*）
    	   queryParams :  function(params) {
			   return {
				   /*limit beginRow,pageSize*/
				   pageSize: params.limit, //页面大小
				   beginRow: params.offset, //开始查询记录
				   headerNumber: $("#formSearch #headerNumber").val()
                 };
           },
    	   sidePagination: "server",   //分页方式：client客户端分页，server服务端分页（*）
    	   pageNumber:1,      //初始化加载第一页，默认第一页
    	   pageSize: 10,      //每页的记录行数（*）
    	   pageList: [10, 20],  //可供选择的每页的行数（*）
	       /*contentType: "application/x-www-form-urlencoded;charset=UTF-8",*/ /*消息主体*/
			  onLoadSuccess: function(result){  //加载成功时执行
			   var rr = result ;
			   },
    	   columns: [{
    	    	checkbox: true
    	   }, {
				field: 'id',
				title: '序号',
				align: "center",//水平
				valign: "middle",//垂直;
				formatter:function(value,row,index){
					var page = $('#table').bootstrapTable("getPage");
					return page.pageSize * (page.pageNumber - 1) + index + 1;

				}
    	   },{
				field: 'headerNumber',
				title: '主车号',
				align: "center",//水平
				valign: "middle"//垂直
    	   }, {
				field: 'trailerNumber',
				title: '挂车号',
				align: "center",//水平
				valign: "middle"//垂直
    	   }, {
				field: 'carType',
				title: '车头类型',
				align: "center",//水平
				valign: "middle",//垂直
				formatter:function(value,row,index){
					   if(value == 0){
						   return '气头' ;
					   }else{
						   return '油头' ;
					   }

				   }
    	   }, {
				field: 'weight',
				title: '行车证荷载',
				align: "center",//水平
				valign: "middle",//垂直
				formatter:function(value,row,index){
					if(value != null && value != ''){
						return (value/100).toFixed(2) ;
					}else{
						return '';
					}
				  }
    	   }, {
				field: 'capacity',
				title: '槽车荷载',
				align: "center",//水平
				valign: "middle",//垂直
				formatter:function(value,row,index){
						if(value != null && value != ''){
							return (value/100).toFixed(2) ;
						}else{
							return '';
						}
					 }
    	   }]
    	  });
    	 };

    	 return oTableInit;
    	};
    </script>
</head>
<body>
	<%@ include file="/common/top.jsp"%>
    <div class="container-fluid all" style="margin-right:20px;">
        <%@ include file="/common/left.jsp"%>
        <div class="panel panel-default"  style="margin-left:20px;">
   			<div class="panel-heading">demo1</div>
		    <div class="panel-body">
			<form id="formSearch" class="form-horizontal" action="${ctx}/car/demo1.do" method="post">
				 <div class="form-group  form-group-sm" style="margin-top:15px">
					  <label class="control-label col-sm-1" >主车号</label>
					  <div class="col-sm-2">
							<input type="text" class="form-control" id="headerNumber" name="headerNumber" value="${carInfo.headerNumber}">
					  </div>
					  <div class="col-sm-2" style="text-align:left;">
							<button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
					  </div>
				 </div>
			</form>
		    </div>
    	</div>
		<table id="table"></table>
    </div>
    <%@ include file="/common/footer.jsp"%>
</body>
</html>