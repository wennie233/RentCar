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
                    <h2>查看车辆信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="user.html">首页</a>
                        </li>
                        <li>
                        	<a>车辆信息</a>
                        </li>
                        <li class="active">
                            <strong>查看车辆信息</strong>
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
                            <label class="control-label" for="type">品牌：</label>
                            <input type="text" id="branch" name="branch" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="price">价格：</label>
                            <input type="text" id="price" name="price" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="amount">数量：</label>
                            <input type="text" id="amount" name="amount"  class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="status">状态：</label>
                            <input type="text" id="status" name="status"  class="form-control">
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
                                    <th>车系</th>
                                    <th>配置</th>
                                    <th>价格</th>
                                    <th>数量</th>
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
    	$('#status').blur(function(){
    		var branch = $('#branch').val()
    		var price = $('#price').val()
    		var amount = $('#amount').val()
    		var status = $('#status').val()
    		var carjson = {}
    		if (amount != ""){
  				carjson["amount"] = amount
    		}
    		if (price != ""){
    			carjson["price"] = price
    		}
    		if (branch != ""){
    			carjson["branch"] = branch
    		}
    		if (status != ""){
    			carjson["status"] = status
    		}
    		
    		$.ajax({
    			type:"POST",
				url:"${pageContext.request.contextPath}/car/check_car_info.action",
				traditional:true,
				data:carjson,
				data_type:"json",
				success:function(carlist){
					
					var obj=eval(carlist);
					var tbody=$('<tbody></tbody>');
					$(obj).each(function (index){
						var val=obj[index];
						var tr=$('<tr></tr>');
						tr.append('<td>'+ val.id + '</td>' + '<td>'+ val.branch + '</td>' +'<td>'+ val.type + '</td>'+'<td>'+ val.configure + '</td>'+'<td>'+ val.price + '</td>' +'<td>'+ val.amount + '</td>' + '<td><span class="label label-primary">'+val.status+'</span></td>');
						tbody.append(tr);
					});
					$('#myTable tbody').replaceWith(tbody);
				}
    		});
    	});
    
    </script>
    
    <script type="text/javascript">
    	$(function(){
    		var branch = $('#branch').val()
    		var price = $('#price').val()
    		var amount = $('#amount').val()
    		var status = $('#status').val()
    		var carjson = {}
    		if (amount != ""){
  				carjson["amount"] = amount
    		}
    		if (price != ""){
    			carjson["price"] = price
    		}
    		if (branch != ""){
    			carjson["branch"] = branch
    		}
    		if (status != ""){
    			carjson["status"] = status
    		}
    		
    		$.ajax({
    			type:"POST",
				url:"${pageContext.request.contextPath}/car/check_car_info.action",
				traditional:true,
				data:carjson,
				data_type:"json",
				success:function(carlist){
					
					var obj=eval(carlist);
					var tbody=$('<tbody></tbody>');
					$(obj).each(function (index){
						var val=obj[index];
						var tr=$('<tr></tr>');
						tr.append('<td>'+ val.cid + '</td>' + '<td>'+ val.branch + '</td>' +'<td>'+ val.type + '</td>'+'<td>'+ val.configure + '</td>'+'<td>'+ val.price + '</td>' +'<td>'+ val.amount + '</td>' + '<td><span class="label label-primary">'+val.status+'</span></td>');
						tbody.append(tr);
					});
					$('#myTable tbody').replaceWith(tbody);
				}
    		});
    	});
    
    </script>
    
</body>

</html>
