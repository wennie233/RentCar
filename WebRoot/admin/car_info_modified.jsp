<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>修改密码</title>
    

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

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
                 </li>

                <li>
                    <a href="ecommerce-orders.html#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">车辆信息</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                    	<li><a href="order.html">查看车辆信息</a></li>
                        <li><a href="undo_orders.html">新增车辆信息</a></li>
                        <li><a href="finish_orders.html">维护车辆信息</a></li>
                    </ul>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">个人信息</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="change_infomation.html">修改个人信息</a></li>
                        <li><a href="change_password.html">修改密码</a></li>
                    </ul>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">订单信息</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="change_infomation.html">待转换租车单</a></li>
                        <li><a href="change_password.html">待转换结算单</a></li>
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
                    <h2>修改 车辆信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="user.html">首页</a>
                        </li>
                        <li>
                        	<a>车辆信息</a>
                        </li>
                        <li class="active">
                            <strong>修改车辆信息</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="ecommerce_product.html#tab-1"> 车辆信息</a></li>
                                
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body">

                                        <form class="form-horizontal" onkeydown="if(event.keyCode==13) return false;" action="${pageContext.request.contextPath}/car/search_car_info.action" method="post">
                                        	<div class="form-group"><label class="col-sm-2 control-label">车辆编号:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="cid" name="cid" onblur="car_info_modified();"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">品牌:</label>
                                                <div class='col-sm-10'><input type='text' class='form-control' id='branch' name='branch'></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">车系:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="type" name="type"></div>
                                            </div>
                                            
                                            <div class="form-group"><label class="col-sm-2 control-label">年代:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="year" name="year"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">配置:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="configure" name="configure"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">座位数:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="size" name="size"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">燃油标号:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="fuel" name="fuel"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">排量:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="gus" name="gus"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">变速箱类型:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="speed" name="speed"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">驱动方式:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="drive" name="drive"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">GPS:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="gps" name="GPS"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">押金（日）:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="price" name="price"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">数量:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="price" name="amount"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">上传图片:</label>
                                                <div class="col-sm-10"><input  type="file" class="form-control" id="photo" name="photo"></div>
                                            </div>
                                            <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-white" type="submit">取消</button>
                                        <button class="btn btn-primary" type="submit">保存</button>
                                    </div>
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

<script src="../js/plugins/summernote/summernote.min.js"></script>

<!-- Data picker -->
<script src="../js/plugins/datapicker/bootstrap-datepicker.js"></script>
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
 		function car_info_modified(){
 			var id = $("#cid").val();
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/car/search_car_info.action",
				traditional:true,
				data:{"cid":id},
				data_type:"json",
				success:function(car){
                    console.log(car);
                    $('#branch').val(car.branch)
 					$('#type').val(car.type)
 					$('#year').val(car.year)
 					$('#configure').val(car.configure)
 					$('#size').val(car.size)
 					$('#fuel').val(car.fuel)
 					$('#gus').val(car.gus)
 					$('#speed').val(car.speed)
 					$('#drive').val(car.drive)
 					$('#gps').val(car.GPS)
 					$('#price').val(car.price)
 					$('#amount').val(car.amount)
 					$('#photo').val(car.car_picture)
				}
			});
		}
		</script>	

        <script>
    $(document).ready(function(){

      //  $('.summernote').summernote();

        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

    });
</script>
</body>

</html>
