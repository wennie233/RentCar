<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>订单</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="../css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
	<link href="../css/plugins/datapicker/datepicker3.css" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            
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
                <li>
                    <a target="_blank" href="../car_rent.jsp"><i class="fa fa-star"></i> <span class="nav-label">首页</span> </a>
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
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="undo_orders.html#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to “RC”租车网.</span>
                </li>


                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
                <li>
                    <a class="right-sidebar-toggle">
                        <i class="fa fa-tasks"></i>
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>未完成订单</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="user.html">首页</a>
                        </li>
                        <li>
                            <a>订单信息</a>
                        </li>
                        <li class="active">
                            <strong>订单</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight ecommerce">


            <div class="ibox-content m-b-sm border-bottom">
            	<form action="${pageContext.request.contextPath}/order/add_user_order.action" method="post">
                <div class="cloumn">
                        <div class="form-group">
                            <label class="control-label" for="name">用户名：</label>
                            <input type="text" id="name" name="name" class="form-control" disabled="disabled" value=${user.name }>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="real_name">真实姓名：</label>
                            <input type="text" id="real_name" name="real_name" class="form-control" disabled="disabled" value=${user.real_name } >
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="tel">联系电话：</label>
                            <input type="text" id="tel" name="tel" class="form-control" disabled="disabled" value=${user.tel }>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="license">驾照：</label>
                            <input type="text" id="license" name="license" class="form-control" disabled="disabled" value=${user.license }>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="type">品牌：</label>
                            <input type="text" id="branch" name="branch" class="form-control" disabled="disabled" value=${car.branch }>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="type">车系：</label>
                            <input type="text" id="type" name="type" class="form-control" disabled="disabled" value=${car.type }>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="prices">租金（日）：</label>
                            <input type="text" id="prices" name="prices" class="form-control" disabled="disabled" value=${car.price }>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="from_date">起始日期：</label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="from_date" name="from_date" type="text" class="form-control" value="05/10/2019">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="end_date">结束日期：</label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="end_date" name="end_date" type="text" class="form-control" >
                            </div>
                        </div>
             	   </div>
             	   
             	   
             	   
             	   <hr>
                        <div class="col-lg-4" >
                        	<input type="hidden" id=price value="" name="price"> 
                        	<input type="hidden" id=car_id value="" name="car_id">
                        	<input type="hidden" id=user_id value="" name="user_id">
                              <button class="btn btn-primary pull-right" type="submit">提交订单</button>
                              <h1 id="p" class="product-main-price">￥0</h1>
                         </div>
                   <hr>
                   
                   <br>
                   <br>
				</form>
            </div>


        </div>
     

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- FooTable -->
    <script src="../js/plugins/footable/footable.all.min.js"></script>
    <script src="../js/plugins/datapicker/bootstrap-datepicker.js"></script>
    

    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>
    <script src="../js/plugins/pace/pace.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();

            $('#from_date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#end_date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

        });

    </script>
    
    
    <script type="text/javascript">
    
    	$('#end_date').blur(function(){
   			var prices = ${car.price};
   			var from_date = document.getElementById("from_date").value;
   			var end_date = document.getElementById("end_date").value;
   			
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
        	 console.log(" 相差 "+dayDiff+"天 "+hours+"小时 "+minutes+" 分钟"+seconds+" 秒");
        	 
		
			all_price = Number(prices) * Number(dayDiff);
   					
   		
             //console.log(inputValue);
             $('#price').val(all_price)
             $('#car_id').val(${car.cid})
             $('#user_id').val(${user.uid})
             document.getElementById("p").innerHTML = "￥"+all_price;
   	 	});
    </script>
    
    <script type="text/javascript">
    	
    </script>
</body>

</html>
