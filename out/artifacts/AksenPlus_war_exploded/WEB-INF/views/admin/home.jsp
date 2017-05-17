<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Light Way Admin</title>

    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/local.css"/>" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">


    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>


</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <img  src="<c:url value="/resources/imgs/aksenplus.png"/>" id="logo"/>
                <li class="active"><a href="#"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                <li><a href="<c:url value="/admin/products"/>"><i class="fa fa-tasks"></i> Products</a></li>
                <li><a href="<c:url value="/admin/orders"/>"><i class="fa fa-globe"></i> Orders</a></li>
                <li><a href="<c:url value="/admin/customers"/>"><i class="fa fa-list-ol"></i> Customer</a></li>
                <li><a href="<c:url value="/admin/sales"/>"><i class="fa fa-font"></i> Sales</a></li>
                <li><a href="<c:url value="/admin/users"/>"><i class="fa fa-list-ul"></i> Users</a></li>
                <li><a href="<c:url value="/admin/settings"/>"><i class="fa fa-table"></i > Settings</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right navbar-user">
                <li class="dropdown messages-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">2 New Messages</li>
                        <li class="message-preview">
                            <a href="#">
                                <span class="avatar"><i class="fa fa-bell"></i></span>
                                <span class="message">Security alert</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li class="message-preview">
                            <a href="#">
                                <span class="avatar"><i class="fa fa-bell"></i></span>
                                <span class="message">Security alert</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                    </ul>
                </li>
                <li class="dropdown user-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                        <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="<c:url value="/j_spring_security_logout" />"><i class="fa fa-power-off"></i>Log Out</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1>Dashboard <small>Dashboard Home</small></h1>
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    Welcome to the admin dashboard! Feel free to review all pages and modify the layout to your needs.
                    <br />
                    This theme uses the <a href="https://www.shieldui.com">ShieldUI</a> JavaScript library for the
                    additional data visualization and presentation functionality illustrated here.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-clock-o"></i>Alerts</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row alert-success">
                            <div class="col-xs-5">
                                <i class="fa fa-thumbs-o-up fa-5x"></i>
                            </div>
                            <div class="col-xs-5 text-right">
                                <p class="alerts-heading">343</p>
                                <p class="alerts-text">New Orders</p>
                            </div>
                        </div>
                        <div class="row alert-success">
                            <div class="col-xs-5">
                                <i class="fa fa-thumbs-o-up fa-5x"></i>
                            </div>
                            <div class="col-xs-5 text-right">
                                <p class="alerts-heading">1256</p>
                                <p class="alerts-text">Registrations</p>
                            </div>
                        </div>
                        <div class="row alert-danger">
                            <div class="col-xs-5">
                                <i class="fa fa-thumbs-o-down fa-5x"></i>
                            </div>
                            <div class="col-xs-5 text-right">
                                <p class="alerts-heading">4</p>
                                <p class="alerts-text">Errors</p>
                            </div>
                        </div>
                        <div class="row alert-success">
                            <div class="col-xs-5">
                                <i class="fa fa-thumbs-o-up fa-5x"></i>
                            </div>
                            <div class="col-xs-5 text-right">
                                <p class="alerts-heading">11</p>
                                <p class="alerts-text">Mentions</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Traffic Estimations for last 30 days</h3>
                    </div>
                    <div class="panel-body">
                        <div id="shieldui-chart1"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Logins per week</h3>
                    </div>
                    <div class="panel-body">
                        <div id="shieldui-chart2"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Budget</h3>
                    </div>
                    <div class="panel-body">
                        <div id="shieldui-chart3"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Purchases</h3>
                    </div>
                    <div class="panel-body">
                        <div id="shieldui-chart4"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Sales personnel Data</h3>
                    </div>
                    <div class="panel-body">
                        <div id="shieldui-grid1"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

</body>
</html>
