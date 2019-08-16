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
                    
                </div>

            </div>
            
             <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table id="myTable" class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>
                                	<th></th>
									<th>ID</th>
                                    <th>车型</th>
                                    <th>申请人</th>
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
                            
                            <div class="modal-footer">
                                   <button type="button" id="btn" data-toggle="modal" data-target="#myModal4" class="btn btn-primary" >转为租车单</button>
                             </div>
                             
                              <div class="modal inmodal" id="myModal4" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">转换租车单</h4>
                                        </div>
                                        <form id="formID" method="post">
                                          <div class="ibox-content">
                                        	<label id="h" ></label>
                                        </div>
                                        <input type="hidden" id=oids  name="oids">
                                        <div class="modal-footer">
                                        	
                                            <button type="button" class="btn btn-white" data-dismiss="modal">取消</button>
                                            <button type="button" class="btn btn-primary" onclick="confirm_user_order()">确认</button>
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
    	var carjson = {};
    	carjson["status"] = '未处理';
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
							tr.append('<td><input type="checkbox"  checked class="i-checks" id="ids" value="'+ orderlist[j].oid +'"></td>');
							tr.append('<td>'+ orderlist[j].oid + '</td>');
							tr.append('<input type="hidden" id="id" name="id" value="'+ orderlist[j].oid + '">')
							let carlist = orderlist[j].carList;
							for(let k=0;k<carlist.length;k++){
								console.log("car");
								console.log(carlist);
								tr.append('<td>'+ carlist[k].branch + '</td>');
								tr.append('<input type="hidden" id="price" value='+ carlist[k].price +' name="price">')
							}
							tr.append('<td>'+ orderlist[j].user_id + '</td>' +'<td>'+ orderlist[j].from_date + '</td>'+'<td>'+ orderlist[j].end_date + '</td>'+'<td>'+ orderlist[j].price + '</td>'  + '<td><span class="label label-primary">'+orderlist[j].status+'</span></td>');
						//	tr.append('<div class="btn-group"><button class="btn-white btn btn-xs" data-toggle="modal" data-target="#myModal4" onclick="Value('+ orderlist[j].oid +');">修改</button>');
							tbody.append(tr);
						}
					}
					$('#myTable tbody').replaceWith(tbody);
				}
    		});
    	
    	});
    </script>
    
    <script type="text/javascript">
    	$('#edate').blur(function(){
    		
    		var admin_id = $('#admin_id').val();
    		var from_date = $('#sdate').val();
    		var end_date = $('#edate').val();
    		var status = '未处理';
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
							tr.append('<td><input type="checkbox" class="i-checks" id="ids" value="'+ orderlist[j].oid + '"></td>');
							tr.append('<td>'+ orderlist[j].oid + '</td>');
							tr.append('<input type="hidden" id="id" name="id" value="'+ orderlist[j].oid + '">')
							let carlist = orderlist[j].carList;
							for(let k=0;k<carlist.length;k++){
								console.log("car");
								console.log(carlist);
								tr.append('<td>'+ carlist[k].branch + '</td>');
								tr.append('<input type="hidden" id="price" value='+ carlist[k].price +' name="price">')
							}
							tr.append('<td>'+ orderlist[j].user_id + '</td>' +'<td>'+ orderlist[j].from_date + '</td>'+'<td>'+ orderlist[j].end_date + '</td>'+'<td>'+ orderlist[j].price + '</td>'  + '<td><span class="label label-primary">'+orderlist[j].status+'</span></td>');
							//tr.append('<div class="btn-group"><button class="btn-white btn btn-xs" data-toggle="modal" data-target="#myModal4" onclick="Value('+ orderlist[j].oid +');">修改</button>');
							tbody.append(tr);
						}
					}
					$('#myTable tbody').replaceWith(tbody);
				}
    		});
    	});
    
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
   		function confirm_user_order(){
    		alert("================test");
    		//var formobj =  document.getElementById("formID");
    		//var oData = new FormData(formobj); 
    		
   			var ids = document.getElementById("oids").value;
   			
   			alert(ids);
    		$.ajax({
    			async: false,
    			type:"POST",
				url:"${pageContext.request.contextPath}/order/confirm_user_order.action",
				traditional:true,
				data:{"ids":ids},
				success:function(userlist){
					alert(userlist);
					$('#myModal4').modal("hide")
					setTimeout(function () {
                    window.parent.location.reload();//让打开这个窗口的父窗口刷新，然后本子窗口关闭！
                }, 1000);
				}
    		});
    	
    	} 
    
   </script> 
   <script type="text/javascript">
    
    	$(document).ready(function () {
            $("#btn").click(function () {
                var opt = [];
                var idList = $('input[id="ids"]:checked');
                    for (var i = 0; i < idList.length; i++) {
                        tmp = $(idList[i]).val();
                        opt.push(tmp);
                        
                        alert(tmp);
                    }
                    alert(opt);
                    $('#oids').val(opt)
                    document.getElementById("h").innerHTML = "确认将编号为"+opt+"的订单转换为租车单？";
             })
            
        });
    </script>
</body>

</html>
