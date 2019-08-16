<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title></title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                 <h1 class="logo-name">RC</h1>

            </div>
           <!--  <h3>Welcome to IN+</h3>  -->
            <p>欢迎来到RC租车网.
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            
            <form class="m-t" role="form" action="${pageContext.request.contextPath}/admin/adminLogin.action" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="name" placeholder="用户名" required="true">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="密码" required="true">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登陆</button>
            </form>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>

</body>

</html>
