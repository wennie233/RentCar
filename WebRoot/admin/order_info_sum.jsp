<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>全部订单信息</title>
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
                            <h2>Welcome</h2>
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
                    <a href="ecommerce-orders.html#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">车辆信息</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                    	<li><a href="check_car_info.jsp">查看车辆信息</a></li>
                        <li><a href="car_info_add.jsp">新增车辆信息</a></li>
                        <li><a href="car_info_modified.jsp">维护车辆信息</a></li>
                    </ul>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">个人信息</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="admin_info.jsp">修改个人信息</a></li>
                        <li><a href="change_password.jsp">修改密码</a></li>
                    </ul>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">订单信息</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                    	<li><a href="all_orders.jsp">全部订单</a></li>
                        <li><a href="unchange_orders.jsp">待转换租车单</a></li>
                        <li><a href="unpay_orders.jsp">待转换结算单</a></li>
                    </ul>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">统计信息</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="change_infomation.html">车辆信息统计</a></li>
                        <li><a href="change_password.html">订单信息统计</a></li>
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
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="form_basic.html#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                    
                     
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="form_basic.html#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
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
                    <h2>全部订单信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="user.html">首页</a>
                        </li>
                        <li>
                        	<a>订单信息</a>
                        </li>
                        <li class="active">
                            <strong>全部订单信息</strong>
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
							<option>已取消</option>
							<option>已结算</option>
							<option>未处理</option>
							<option>已处理</option>
						</select>
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
                                    <th>申请人</th>
                                    <th>处理人</th>
                                    <th>申请日期</th>
                                    <th>处理日期</th>
                                    <th>开始日期</th>
                                    <th>结束日期</th>
                                    <th>价格</th>
                                    <th>状态</th>
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
    	var carjson = {};
    	$.ajax({
    			type:"POST",
				url:"${pageContext.request.contextPath}/order/look_all_order.action",
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
							tr.append('<td>'+ orderlist[j].user_id + '</td>' +'<td>'+ orderlist[j].admin_id + '</td>'+'<td>'+ orderlist[j].make_date + '</td>'+'<td>'+ orderlist[j].deal_date + '</td>' +'<td>'+ orderlist[j].from_date + '</td>'+'<td>'+ orderlist[j].end_date + '</td>'+'<td>'+ orderlist[j].price + '</td>'  + '<td><span class="label label-primary">'+orderlist[j].status+'</span></td>');
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
				url:"${pageContext.request.contextPath}/order/look_all_order.action",
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
							tr.append('<td>'+ orderlist[j].user_id + '</td>' +'<td>'+ orderlist[j].admin_id + '</td>'+'<td>'+ orderlist[j].make_date + '</td>'+'<td>'+ orderlist[j].deal_date + '</td>' +'<td>'+ orderlist[j].from_date + '</td>'+'<td>'+ orderlist[j].end_date + '</td>'+'<td>'+ orderlist[j].price + '</td>'  + '<td><span class="label label-primary">'+orderlist[j].status+'</span></td>');
						//	tr.append('<div class="btn-group"><button class="btn-white btn btn-xs" data-toggle="modal" data-target="#myModal4" onclick="Value('+ orderlist[j].oid +');">修改</button><button id="cancelOrder" class="btn-white btn btn-xs" onclick="btn('+ orderlist[j].oid +');">取消</button></div>');
							tbody.append(tr);
						}
					}
					$('#myTable tbody').replaceWith(tbody);
				}
    		});
    	});
    
    </script>
    
    
</body>

</html>
