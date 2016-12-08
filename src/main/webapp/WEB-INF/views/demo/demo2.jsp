<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
	<%@ include file="/common/header.jsp"%>
    <title>bootstrap</title>
    <script type="text/javascript">
    $(function () {
    	

    	 //1.初始化Table
    	 var oTable = new TableInit();
    	 oTable.Init();

    	 
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
    	   url: '${ctx}/car/search2.do',   //请求后台的URL（*）
    	   method: 'get',      //请求方式（*）
    	   pagination: true,     //是否显示分页（*）
    	   queryParams : function(params) {
               return {
				   /*pageSize: params.limit, //页面大小
				   beginRow: params.offset, //开始查询记录*/
		    	   headerNumber: $("#formSearch #headerNumber").val()
                   };
           },
    	   sidePagination: "client",   //分页方式：client客户端分页，server服务端分页（*）
    	   pageNumber:1,      //初始化加载第一页，默认第一页
    	   pageSize: 10,      //每页的记录行数（*）
    	   pageList: [10,20],  //可供选择的每页的行数（*）
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
                field: 'driverName',
                title: '驾驶员名字',
                align: "center",//水平
                valign: "middle"//垂直
    	   }, {
                field: 'driverPhone',
                title: '驾驶员电话',
                align: "center",//水平
                valign: "middle"//垂直
    	   }, {
                field: 'followerName',
                title: '押运员名字',
                align: "center",//水平
                valign: "middle"//垂直
    	   }, {
                field: 'followerPhone',
                title: '押运员电话',
                align: "center",//水平
                valign: "middle"//垂直
    	   }, {
                field: 'backupPhone',
                title: '备用电话',
                align: "center",//水平
                valign: "middle"//垂直
    	   }, {
                field: 'strExpiredDate',
                title: '车辆信息到期时间',
                align: "center",//水平
                valign: "middle"//垂直
    	   }, {
                field: 'remark',
                title: '备注',
                align: "center",//水平
                valign: "middle"//垂直
    	   },{
                field: 'status',
                title: '状态'  ,
                align: "center",//水平
                valign: "middle",//垂直
                formatter:function(value,row,index){
                    if(value == 0){
                        return '正常';
                    }else{
                        return '禁用';
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
           <div class="panel-heading">demo2</div>
                   <div class="panel-body ">
                        <form id="formSearch" class="form-horizontal" action="${ctx}/car/demo2.do" method="post">
                             <div class="form-group  form-group-sm" style="margin-top:15px">
                                  <label class="control-label col-sm-1">主车号</label>
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