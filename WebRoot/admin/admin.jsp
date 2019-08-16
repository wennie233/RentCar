<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>管理员首页</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="../css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

    <link href="../css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <script src="../js/plugins/echart/echarts.min.js"></script>

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
                            	<strong class="font-bold"> ${admin.name }</strong>
                            </span>
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

        <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="user.html#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">欢迎来到RC租车网.</span>
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
                <div class="row  border-bottom white-bg dashboard-header">

                    <div class="col-sm-12">
                        <h2>Welcome </h2>
                        <small>你有个订单未处理</small>
                        
                    </div>
                    <div class="col-sm-8">
                        <div class="flot-chart dashboard-chart">
                            <div class="flot-chart-content" id="main"></div>
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

    <!-- jQuery UI -->
    <script src="../js/plugins/jquery-ui/jquery-ui.min.js"></script>

   
   
    <!-- Toastr -->
  
	<script src="../js/plugins/echart/echarts.min.js"></script>

    <script>
        var myChart = echarts.init(document.getElementById('main'));
         
         myChart.setOption({
             title: {
                 text: '"RC"一年内订单数量'
             },
             backgroundColor: '#1ab394',
             tooltip : {
                 trigger: 'axis'
             },
             legend: {
                 data:['数量']
             },
             calculable : true,
             tooltip: {},
             xAxis: {
                axisLabel:{
                      rotate: 30,
                      interval:0
                 },
                 axisLine:{
                    lineStyle :{
                         color: '#d5d5d5'
                     }
                 },
                 type : 'category',
                 boundaryGap : false,
             	
                 data: []
             },
             yAxis: [
             	{
 
                     type : 'value',
                     axisLine:{
                          lineStyle :{
                               color: '#d5d5d5'
                          }
                      }
                }
             ],
             series: [
                            {
                                name:'数量',
                                type:'line',
                                symbol:'none',
                                smooth: 0.2,
                                color:['#1C84C6'],
                                data:[]
                            }
             
             ]
         });
         
         myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
         
         var names=[];    //类别数组（实际用来盛放X轴坐标值）
         var nums=[];    //销量数组（实际用来盛放Y坐标值）
         var prices=[];
         
			var date=new Date;
			var year=date.getFullYear();
			var month=date.getMonth()+1;
			console.log(year+"-"+month);
			for(var i=0;i<12;i++){
				if (Number(month) >= 10){
					names[i]= year+"-"+month;
					names[i]= year+"-"+month;
				}
				else if(Number(month <10 && month > 0)){
					names[i] = year+"-0"+month;
					names[i] = year+"-0"+month;
				}
				else{
					year = Number(year) - 1;
					month = 12;
					names[i] = year+"-"+month;
					names[i] = year+"-"+month;
				}
				month --;
			}
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/order/look_sum_order_by_month.action",
				traditional:true,
				data_type:"json",
				success:function(order_sum){
					console.log(order_sum);
					for(let k=0; k<names.length;k++){
						for(let j=0;j<order_sum.length;j++){
							console.log(order_sum[j].prices);
							console.log(order_sum[j].order_sum);
							console.log(order_sum[j].date_part);
							//console.log(order_list[k][0]);
							if (order_sum[j].date_part == names[k]){
								nums[k] = order_sum[j].order_sum;
								
								prices[k] = order_sum[j].prices;
							}	
						}
						if (nums[k] == null){
							nums[k] = 0;
						}
					}
					console.log(nums);
					console.log(names);
					console.log(prices);
					myChart.hideLoading();    //隐藏加载动画
                    myChart.setOption({        //加载数据图表
                        xAxis: {
                            data: names
                        },
                        series: [
                        {
                        	name: '数量',
                            data: nums
                        }]
                    });
					
				}
			});
		
    </script>
    
</body>
</html>
