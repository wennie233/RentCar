<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>已完成订单表</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="../css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

<style type="text/css">


    img{

       width:240px;

       height:240px;

       margin-top:0px
       margin-bottom:0px
		background-size:cover
       }
       

    </style>

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
                            	<strong class="font-bold">${user.name }</strong>
                            </span>
                        </a>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li class="landing_link">
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
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="finish_orders.html#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>已完成订单</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="user.html">首页</a>
                        </li>
                        <li>
                            <a>订单信息</a>
                        </li>
                        <li class="active">
                            <strong>已完成订单</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
            <c:forEach items="${carList}" var="carList" >
				<div id ="ig" class="col-md-3">
                    <div class="ibox" >
                        <div class="ibox-content product-box">
                            <div class="product-imitation">
                               <img src="<%=request.getContextPath() %>/picture${carList.picture}">
                            </div>
                            <div class="product-desc">
                            	<form id="frm" action="${pageContext.request.contextPath}/user/look_car_info.action" method="post">
                                <span class="product-price">
                                  		  ￥${carList.price}
                                </span>
                                <small class="text-muted" >编号：${carList.cid}</small>
                                <a href="ecommerce_products_grid.html#" class="product-name">${carList.branch}</a>

                                <div class="small m-t-xs">
                                    ${carList.type}
                                </div>
                   				<input type="hidden" value=${carList.cid} name="cid">
                                <div class="m-t text-righ">
                                    <button class="btn btn-xs btn-outline btn-primary" type="submit">Info <i class="fa fa-long-arrow-right"></i> </button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
</c:forEach>
            

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

    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>
    <script src="../js/plugins/pace/pace.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            $('.footable2').footable();

        });

    </script>
    
    <script type="text/javascript">
    	function find_info(cid){
    		alert(cid)
    		$.ajax({
    			type:"POST",
				url:"${pageContext.request.contextPath}/user/look_car_info.action",
				traditional:true,
				data:{"cid":cid},
				data_type:"json",
				success:function(car){
					console.log("success");
					window.location.href="car_rent2.jsp?car="+car;
					
				}
    		});
    	}
    </script>
    
   

</body>

</html>
