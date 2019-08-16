<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>个人信息</title>
    <!-- 

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="。。/css/plugins/footable/footable.core.css" rel="stylesheet">
-->
    <link href="../css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
	 

	<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="../css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <h2>Welcom</h2>
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="ecommerce-orders.html#">
                            <span class="clear"> <span class="block m-t-xs"> 
                            	<strong class="font-bold">David Williams</strong>
                            </span>
                        </a>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li class="landing_link">
                    <a target="_blank" href="../car_rent.html"><i class="fa fa-star"></i> <span class="nav-label">首页</span> </a>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">个人信息</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="user_info.jsp">修改个人信息</a></li>
                        <li><a href="change_password.jsp">修改密码</a></li>
                    </ul>
                </li>
                <li>
                    <a href="ecommerce-orders.html#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">订单信息</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="undo_orders.jsp">未完成租车单</a></li>
                        <li><a href="finish_orders.jsp">已完成租车单</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="change_password.html#"><i class="fa fa-bars"></i> </a>
          
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">欢迎来到RC租车网</span>
                </li>


                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> 退出
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>未完成订单信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="user.html">首页</a>
                        </li>
                        <li>
                        	<a>订单信息</a>
                        </li>
                        <li class="active">
                            <strong>未完成订单信息</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight ecommerce">
        
        
        <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="price">处理人：</label>
                            <input type="text" id="admin_id" name="admin_id" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="amount">起始日期：</label>
                            <input type="text" id="sdate" name="sdate"  class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="status">结束日期：</label>
                            <input type="text" id="edate" name="edate"  class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="status">状态：</label>
                            <select class="form-control" id="status" name = status>
							<option>未处理</option>
							<option>已处理</option>
						</select>
                        </div>
                    </div>
                </div>

            </div>
            
             <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table id="myTable" class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>
									<th>ID</th>
                                    <th>车型</th>
                                    <th>处理人</th>
                                    <th>开始日期</th>
                                    <th>结束日期</th>
                                    <th>价格</th>
                                    <th>状态</th>
                                    <th class="text-right">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                
									
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="6">
                                        <ul class="pagination pull-right"></ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                            
                             <div class="modal inmodal" id="myModal4" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">修改订单</h4>
                                            
                                        </div>
                                        <form id="formID" method="post">
                                        <div class="modal-body">
                        					<div class="form-group">
                           				    	<label class="control-label" for="oid">订单ID：</label>
                     	   				    	<input type="text" id="oid" name="oid" class="form-control" readonly="readonly">
                    				    	</div>
                    					</div>
                                        <div class="modal-body">
                        					<div class="form-group">
                           				    	<label class="control-label" for="from_date">起始日期：</label>
                     	   				    	<input type="text" id="from_date" name="from_date"  class="form-control">
                    				    	</div>
                    					</div>
                    					<div class="modal-body">
                        					<div class="form-group">
                            					<label class="control-label" for="end_date">结束日期：</label>
                            					<input type="text" id="end_date" name="end_date" onblur="changAmt();" class="form-control">
                       	 					</div>
                    					</div>
                                        <div class="modal-footer">
                                        	<h1 id="p" class="product-main-price">￥0</h1>
                                        	<input type="hidden" id=price  name="price">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">取消</button>
                                            <button type="button" class="btn btn-primary" onclick="modify_user_order()">修改</button>
                                        </div>
                                     
                                        </form>
                                    </div>
                                </div>
                            </div>
                            

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
       

        </div>
   


    <!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>
    <script src="../js/plugins/pace/pace.min.js"></script>
<script src="../js/plugins/footable/footable.all.min.js"></script>
    <!-- iCheck -->
    <script src="../js/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>
        <script>
        $(document).ready(function() {

            $('.footable').footable();

        });

    </script>
    
    <script type="text/javascript">
    	$(function(){
    	var status = $('#status').val();
    	var carjson = {};
    	carjson["status"] = status;
    	$.ajax({
    			type:"POST",
				url:"${pageContext.request.contextPath}/order/look_user_order.action",
				traditional:true,
				data:carjson,
				data_type:"json",
				success:function(userlist){
					//var obj=eval(userlist);
					//console.log(userlist)
					var tbody=$('<tbody></tbody>');
					for(let i=0;i<userlist.length;i++){
						var tr=$('<tr></tr>');
						let orderlist = userlist[i].orderList;
						for(let j=0;j<orderlist.length;j++){
							tr.append('<td>'+ orderlist[j].oid + '</td>');
							tr.append('<input type="hidden" id="id" name="id" value="'+ orderlist[j].oid + '">')
							let carlist = orderlist[j].carList;
							for(let k=0;k<carlist.length;k++){
								console.log("car");
								console.log(carlist);
								tr.append('<td>'+ carlist[k].branch + '</td>');
								tr.append('<input type="hidden" id="price" value='+ carlist[k].price +' name="price">')
							}
							tr.append('<td>'+ orderlist[j].admin_id + '</td>' +'<td>'+ orderlist[j].from_date + '</td>'+'<td>'+ orderlist[j].end_date + '</td>'+'<td>'+ orderlist[j].price + '</td>'  + '<td><span class="label label-primary">'+orderlist[j].status+'</span></td>');
							tr.append('<div class="btn-group"><button class="btn-white btn btn-xs" data-toggle="modal" data-target="#myModal4" onclick="Value('+ orderlist[j].oid +');">修改</button><button id="cancelOrder" class="btn-white btn btn-xs" onclick="btn('+ orderlist[j].oid +');">取消</button></div>');
							tbody.append(tr);
						}
					}
					$('#myTable tbody').replaceWith(tbody);
				}
    		});
    	
    	});
    </script>
    
    <script type="text/javascript">
    	$('#status').blur(function(){
    		
    		var admin_id = $('#admin_id').val();
    		var from_date = $('#sdate').val();
    		var end_date = $('#edate').val();
    		var status = $('#status').val();
    		var carjson = {};
    		
    		if (admin_id != ""){
    			carjson["admin_id"] = admin_id;
    		}
    		if (from_date != ""){
    			carjson["from_date"] = from_date;
    		}
    		if (end_date != ""){
    			carjson["end_date"] = end_date;
    		}
    		if (status != ""){
    			carjson["status"] = status;
    		}
    		
    		$.ajax({
    			type:"POST",
				url:"${pageContext.request.contextPath}/order/look_user_order.action",
				traditional:true,
				data:carjson,
				data_type:"json",
				success:function(userlist){
					//var obj=eval(userlist);
					//console.log(userlist)
					var tbody=$('<tbody></tbody>');
					for(let i=0;i<userlist.length;i++){
						var tr=$('<tr></tr>');
						let orderlist = userlist[i].orderList;
						for(let j=0;j<orderlist.length;j++){
							tr.append('<td>'+ orderlist[j].oid + '</td>');
							tr.append('<input type="hidden" id="id" name="id" value="'+ orderlist[j].oid + '">')
							let carlist = orderlist[j].carList;
							for(let k=0;k<carlist.length;k++){
								console.log("car");
								console.log(carlist);
								tr.append('<td>'+ carlist[k].branch + '</td>');
								tr.append('<input type="hidden" id="price" value='+ carlist[k].price +' name="price">')
							}
							tr.append('<td>'+ orderlist[j].admin_id + '</td>' +'<td>'+ orderlist[j].from_date + '</td>'+'<td>'+ orderlist[j].end_date + '</td>'+'<td>'+ orderlist[j].price + '</td>'  + '<td><span class="label label-primary">'+orderlist[j].status+'</span></td>');
							tr.append('<div class="btn-group"><button class="btn-white btn btn-xs" data-toggle="modal" data-target="#myModal4" onclick="Value('+ orderlist[j].oid +');">修改</button><button id="cancelOrder" class="btn-white btn btn-xs" onclick="btn('+ orderlist[j].oid +');">取消</button></div>');
							tbody.append(tr);
						}
					}
					$('#myTable tbody').replaceWith(tbody);
				}
    		});
    	});
    
    </script>
    
    <script type="text/javascript">
    	function btn(oid){
    		$.ajax({
    			async: false,
    			type:"POST",
				url:"${pageContext.request.contextPath}/order/cancel_user_order.action",
				traditional:true,
				data:{"oid":oid},
				data_type:"json",
				success:function(userlist){
					alert("取消成功");
					setTimeout(function () {
                    window.parent.location.reload();//让打开这个窗口的父窗口刷新，然后本子窗口关闭！
                }, 1000);
					
				},
				error: function(userlist){
				}
    		});
		}
    
    
   
    </script>
   
   <script type="text/javascript">
   		function Value(id,from,end){
   		alert("from"+end);
   			$('#oid').val(id);
   			$('#from_date').val(from);
   			$('#end_date').val(end);
   		}
   
   </script>
   
   
   <script type="text/javascript">
   		function modify_user_order(){
    		
    		var price = document.getElementById("price").value;
   			var from_date = document.getElementById("from_date").value;
   			var oid = document.getElementById("oid").value;
   			var end_date = document.getElementById("end_date").value;
    		//console.log(oData.from_date);
    		$.ajax({
    			async: false,
    			type:"POST",
				url:"${pageContext.request.contextPath}/order/modify_user_order.action",
				traditional:true,
				data:{"oid":oid,"from_date":from_date,"end_date":end_date,"price":Number(price)},
				data_type:"json",
				processData: false,
    			contentType: false,
				success:function(userlist){
					alert("修改成功");
					$('#myModal4').modal("hide")
					setTimeout(function () {
                    window.parent.location.reload();//让打开这个窗口的父窗口刷新，然后本子窗口关闭！
                }, 1000);
				}
    		});
    	
    	} 
    
   </script> 
   <script type="text/javascript">
    
    	function changAmt(){
   			
   			var price = document.getElementById("price").value;
   			var from_date = document.getElementById("from_date").value;
   			var end_date = $('#end_date').val();
   			//如果时间格式是正确的，那下面这一步转化时间格式就可以不用了
   			 var dateBegin = new Date(from_date.replace(/-/g, "/"));//将-转化为/，使用new Date
   			 var dateEnd = new Date(end_date.replace(/-/g, "/"));//将-转化为/，使用new Date
   			 var dateDiff = dateEnd.getTime() - dateBegin.getTime();//时间差的毫秒数
    		 var dayDiff = Math.floor(dateDiff / (24 * 3600 * 1000));//计算出相差天数
   			 var leave1=dateDiff%(24*3600*1000);    //计算天数后剩余的毫秒数
    		 var hours=Math.floor(leave1/(3600*1000));//计算出小时数
        	 //计算相差分钟数
        	 var leave2=leave1%(3600*1000);    //计算小时数后剩余的毫秒数
        	 var minutes=Math.floor(leave2/(60*1000));//计算相差分钟数
        	//计算相差秒数
        	 var leave3=leave2%(60*1000);      //计算分钟数后剩余的毫秒数
       		 var seconds=Math.round(leave3/1000);
       		 alert(seconds);
        	// console.log(" 相差 "+dayDiff+"天 "+hours+"小时 "+minutes+" 分钟"+seconds+" 秒");
        	 
		
			all_price = Number(price) * Number(dayDiff);
			alert(all_price);
   			
   		
             //console.log(inputValue);
             $('#price').val(all_price)
             document.getElementById("p").innerHTML = "￥"+all_price;
   	 	}
    </script>
</body>

</html>
