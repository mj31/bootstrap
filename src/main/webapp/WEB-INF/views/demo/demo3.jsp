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
    	
    	var expiredDate = {
    		    elem:'#expiredDate',
    		    format:'YYYY-MM-DD',
    		    istime:false,
    		    isclear:true,
    		    istoday:true,
    		    issure:true,
    		    festival:false,
    		    fixed:false,
    		    zIndex:99999999
    		}

    		laydate(expiredDate); 
    	
    	 //1.初始化Table
    	 var oTable = new TableInit();
    	 oTable.Init();
    	 
    	 //2.初始化Button的点击事件
    	 var oButtonInit = new ButtonInit();
    	 oButtonInit.Init();
    	 
    	 
    	 // 添加弹出层 
    	 $("#btn_add").click(function(){
    		 $("#lblAddTitle").text("添加公司信息");
    		 $("#addForm #loginName").attr("readonly",false);
    		 formNull();
    		 $("#saveUser").text("保存") ; 
    	     $('#add').modal();
    	 });
    	 
    	 //修改弹出层 
    	 $("#btn_edit").click(function(){
    		 $("#lblAddTitle").text("修改公司信息");  
    		 $("#saveUser").text("修改") ; 
    		 formNull();
    		 //校验选了一条数据 
    		 if($(".selected").length != 1){ 
    			 bootbox.alert({  
    		            buttons: {  
    		               ok: {  
    		                    label: '确定',  
    		                    className: 'btn-myStyle'  
    		                }  
    		            },  
    		            message: '请选择一条数据进行操作',  
    		            
    		        }); 
    			 return ;
    		 }
    		 

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
    	   method: 'get',      //请求方式（*）
    	   toolbar: '#toolbar',    //工具按钮用哪个容器
    	   striped: true,      //是否显示行间隔色
    	   cache: false,      //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    	   pagination: true,     //是否显示分页（*）
    	   sortable: false,      //是否启用排序
    	   sortOrder: "asc",     //排序方式
    	/*    queryParams: queryParams, *///传递参数（*）
    	   queryParams : function(params) {
               return {
            	   limit: params.limit, //页面大小
		    	   offset: params.offset, //页码
		    	   headerNumber: $("#formSearch #headerNumber").val(), 
		    	   driverPhone: $("#formSearch #driverPhone").val(), 
		    	   status: $("#formSearch #status").val()
                   };
           },
    	   queryParamsType: "limit", //参数格式,发送标准的RESTFul类型的参数请求  
    	   sidePagination: "server",   //分页方式：client客户端分页，server服务端分页（*）
    	   pageNumber:1,      //初始化加载第一页，默认第一页
    	   pageSize: 10,      //每页的记录行数（*）
    	   pageList: [10, 25, 50, 100],  //可供选择的每页的行数（*）
    	   search: true,      //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
    	   strictSearch: true,
    	   showColumns: true,     //是否显示所有的列
    	   showRefresh: true,     //是否显示刷新按钮
    	   minimumCountColumns: 2,    //最少允许的列数
    	   clickToSelect: true,    //是否启用点击选中行
    	   height: 500,      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
    	   uniqueId: "ID",      //每一行的唯一标识，一般为主键列
    	   showToggle:true,     //是否显示详细视图和列表视图的切换按钮
    	   cardView: false,     //是否显示详细视图
    	   detailView: false,     //是否显示父子表
    	   columns: [{
    	    checkbox: true
    	   }, {
    	    field: 'id',
    	    title: '序号', 
    	    align: "center",//水平
            valign: "middle",//垂直;
            width:5,
            formatter:function(value,row,index){
                var page = $('#table').bootstrapTable("getPage");
                return page.pageSize * (page.pageNumber - 1) + index + 1+'<input type="hidden" class="ids"  value='+value+' carType = '+row.carType+'>';
              
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
    	   }, {
    	    field: 'carPhone',
    	    title: '随车电话', 
    	    align: "center",//水平
            valign: "middle"//垂直
    	   }, {
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
            width:20,
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
    	 
    	 
    	 var ButtonInit = function () {
    	 var oInit = new Object();
    	 var postdata = {};
    	 
    	 oInit.Init = function () {
    	  //初始化页面上面的按钮事件
    	 };
    	 
    	 return oInit;
    	};  
    	

    </script>
</head>
<body>
<%@ include file="/common/top.jsp"%>
    <div class="container-fluid all" style="margin-right:20px;">
        <%@ include file="/common/left.jsp"%>
        <div class="panel panel-default"  style="margin-left:20px;">
   <div class="panel-heading">车辆信息管理</div>
   <div class="panel-body">
    <form id="formSearch" class="form-horizontal" action="${ctx}/car/demo1.do" method="post">
	     <%--<div class="form-group  form-group-sm" style="margin-top:15px">
		      <label class="control-label col-sm-1" for="txt_search_departmentname">主车号</label>
		      <div class="col-sm-2">
		       		<input type="text" class="form-control" id="headerNumber" name="headerNumber" value="${carInfo.headerNumber}">
		      </div>
		      <label class="control-label col-sm-1" for="txt_search_statu">驾驶员电话</label>
		      <div class="col-sm-2">
		       		<input type="text" class="form-control" id="driverPhone" name="driverPhone" value="${carInfo.driverPhone}">
		      </div>
		      <label class="control-label col-sm-1" for="txt_search_statu">状态</label>
		      <div class="col-sm-2">
		       		<div class="form-group">
					    <select class="form-control" id="status" name="status"> 
						      <option value="">全部</option> 
						      <option value="0"  <c:if test="${carInfo.status eq 0 }"> selected </c:if>>正常</option> 
						      <option value="1"  <c:if test="${carInfo.status eq 1 }"> selected </c:if>>禁用</option> <!-- <c:if test="${user.status eq 1 }"> selected </c:if> -->
					      </select>
					  </div>
		      </div>
		      <div class="col-sm-2" style="text-align:left;">
		       		<button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
		      </div>
	     </div>--%>
    </form>
   </div>
  </div>  
 
  <div id="toolbar" class="btn-group">
	    <button id="btn_add" type="button" class="btn btn-default">
	    	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
	   </button>
	   <button id="btn_edit" type="button" class="btn btn-default">
	    	<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
	   </button>
	   <button id="btn_delete" type="button" class="btn btn-default">
	    	<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>禁用
	   </button>
	   <button type="button" onclick="$('#table').tableExport({ type: 'excel', separator: ';', escape: 'false' });"  class="btn btn-default">
			<i class="glyphicon glyphicon-search">导出Excel</i>
	   </button>
  </div>
        <table id="table"></table>
    </div>
    <!--------------------------添加/修改信息的弹出层---------------------------->
	<div id="add" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="lblAddTitle" style="font-weight:bold">添加车辆信息信息</span>
                </h4>
            </div>
            <form class="form-horizontal form-bordered form-row-strippe"  id="addForm" data-toggle="validator" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">主车号</label>
                                <div class="col-md-10" style="width:50%">
                                    <!-- <select id="PID" name="PID" type="text" class="form-control select2" placeholder="父ID..." ></select> -->
                                    <input id="headerNumber"  name="headerNumber" type="text" class="form-control" placeholder="主车号" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">挂车号</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="trailerNumber" name="trailerNumber" type="text" class="form-control" placeholder="挂车号" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">车头类型</label>
                                <div class="col-md-10" style="width:50%"> 
                                    <select class="form-control" id="carType" name="carType"> 
									      <option value="0" >气头</option> 
									      <option  value="1">油头</option>
					      			</select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">行车证荷载量</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="weight" name="weight"  type="text" class="form-control" placeholder="行车证荷载量" />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">槽车容量</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="capacity" name="capacity" type="text" class="form-control" placeholder="槽车容量" />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">随车电话</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="carPhone" name="carPhone" type="text" class="form-control" placeholder="随车电话" />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">驾驶员名字</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="driverName" name="driverName" type="text" class="form-control" placeholder="驾驶员名字" />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">驾驶员电话</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="driverPhone" name="driverPhone" type="text" class="form-control" placeholder="驾驶员电话" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">押运员名字</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="followerName" name="followerName" type="text" class="form-control" placeholder="押运员名字" />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">押运员电话</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="followerPhone" name="followerPhone" type="text" class="form-control" placeholder="押运员电话" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">备用电话</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="backupPhone" name="backupPhone" type="text" class="form-control" placeholder="备用电话" />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">车辆到期时间</label>
                                <div class="col-md-10" style="width:50%">
                                    <input id="expiredDate" name="expiredDate" type="text" readonly class="form-control" placeholder="车辆到期时间" />
                                </div>  
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2" style="margin-left:40px">备注</label>
                                <div class="col-md-10" style="width:50%">
                                    <textarea id="remark" name="remark"  class="form-control"/></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-info">
                    <button type="button" class="btn blue" id="saveUser">保存</button>
                    <button type="button" class="btn green" data-dismiss="modal">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>
  <%@ include file="/common/footer.jsp"%>
</body>
</html>