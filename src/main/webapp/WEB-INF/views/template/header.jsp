<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="<c:url value="/resources/imgs/aksenplus.png"/>" rel="shortcut icon">
    <title>Aksen Plus</title>

    <!-- Bootstrap Core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/css/shop-homepage.css"/>" rel="stylesheet">




</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="<c:url value="/"/>"><img src="<c:url value="/resources/imgs/aksenplus.png"/> "  id="logo"/></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#"> <i class="fa fa-phone" ></i> 8 (34675) 95-044</a>
                </li>
                <li>
                    <a href="#" ><i class="fa fa-map-marker" ></i> Find us</a>
                </li>
                <li>
                    <form class="nav navbar-nav ">
                        <input type="text"  name="search" class="searchbar" placeholder="Search..">
                    </form>
                </li>
            </ul>


            <div class="usersection">

                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-shopping-cart" >

<!--  if customer is logged in   -->
                            <c:if test="${pageContext.request.userPrincipal.name!=null}">
                        </i> Cart  <span class="badge"></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header"><i class="fa fa-envelope" ></i>Cart Content</li>
                            <li><a href="/customer/cart">View Cart <span class="fa fa-eye"></span></a></li>
                        </ul>

                    </li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>${pageContext.request.userPrincipal.name}<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value="/customer/profile" />"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="<c:url value="/customer/orders" />"><i class="fa fa-file"></i> Orders</a></li>
                            <li><a href="<c:url value="/customer/settings" />"><i class="fa fa-gear"></i> Settings</a></li>
                            <li><a href="<c:url value="/customer/contact" />"><i class="fa fa-life-ring"></i> Contact us</a></li>
                            <li class="divider"></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                    </c:if>


                    <!--  if customer is not logged in   -->

                    <c:if test="${pageContext.request.userPrincipal.name==null}">
                        </i> Cart <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="divider"></li>
                            <li class="login-btn">
                                <a href="<c:url value="/login"/> ">
                                    <span class="avatar"><i class="fa fa-sign-in"></i></span>
                                    <span class="message"> Login to view cart</span>
                                </a>
                            </li>
                            <li class="divider"></li>

                        </ul>

                        </li>
                        <li class="dropdown user-dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>Account<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                              <li class="divider"></li>
                                <li class="login-btn"><a href="<c:url value="/login" />"><i class="fa fa-sign-in"></i> Login</a></li>
                                <li class="divider"></li>
                                <li class="signup-btn"><a href="<c:url value="/signup" />"><i class="fa fa-user-plus"></i> Signup</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                    </c:if>


                </ul>
            </div>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>




<div class="container">
    <nav class="navbar navbar-default">

        <div class="collapse navbar-collapse js-navbar-collapse">
            <ul class="nav navbar-nav">





                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/computers" /> " >
                        <i class="fa fa-desktop" ></i>
                        Computers </a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>
                                <li><a href="<c:url value="/category/computers/pc" />">Desktop PCs</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/computers/laptop" />">Laptops</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/computers/notebooks" />">Notebooks</a></li>
                            </ul>
                        </li>
                    </ul>

                </li>





                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/tablets" /> " >
                        <i class="fa fa-tablet" ></i>
                        Tablets</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>
                                <li><a href="<c:url value="/category/tablets/android" />">Android</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/tablets/ipad" />">iPad</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/tablets/windows" />">Windows Tablets</a></li>




                            </ul>
                        </li>
                    </ul>

                </li>




                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/phones" /> " >
                        <i class="fa fa-mobile" ></i>
                        Phones</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>
                                <li><a href="<c:url value="/category/phone/android" />">Android</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/phone/iphone" />">iPhone</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/tablets/windows_phone" />">Windows Phones</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/tablets/regular" />">Others</a></li>

                            </ul>
                        </li>
                    </ul>

                </li>



                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/consoles" /> " >
                        <i class="fa fa-gamepad" ></i>
                        Consoles</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>
                                <li><a href="<c:url value="/category/consoles/xboxone" />">Xbox One</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/consoles/ps3" />">Playstation 3</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/consoles/ps4" />">Playstation 4</a></li>

                            </ul>
                        </li>
                    </ul>

                </li>


                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/monitors" /> " >
                        <i class="fa fa-window-maximize"></i>
                        Monitors</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>
                                <li><a href="<c:url value="/category/monitors/computer_monitors" />">Computer Monitors</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/monitors/projector" />">Projectors</a></li>
                                <li class="divider"><hr></li>
                            </ul>
                        </li>
                    </ul>

                </li>





                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/tvs" /> " >
                        <i class="fa fa-television"></i>
                        TVs</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>
                                <li><a href="<c:url value="/category/tvs/smart_tv" />">Smart TVs</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/tvs/4k_hd" />">4k HD</a></li>
                                <li class="divider"><hr></li>
                            </ul>
                        </li>
                    </ul>

                </li>


                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/storage" /> " >
                        <i class="fa fa-hdd-o"></i>
                        Storage</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>

                                <li><a href="<c:url value="/category/storage/hard_disks" />">Hard Disks</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/storage/usb_drive" />">USB Drives</a></li>
                                <li class="divider"><hr></li>
                        <li><a href="<c:url value="/category/storage/memory_card" />">Memory cards</a></li>
                        <li class="divider"><hr></li>

                    </ul>
                        </li>
                    </ul>
                </li>

                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/printers" /> " >
                        <i class="fa fa-print"></i>
                        Printers</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>

                                <li><a href="<c:url value="/category/printers/laser_printer" />">Lazer Printers</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/printers/laser_inc " />">Inc Printers</a></li>
                                <li class="divider"><hr></li>
                        <li><a href="<c:url value="/category/printers/fax" />">Fax</a></li>
                        <li class="divider"><hr></li>
                    </ul>
                        </li>
                    </ul>

                </li>


                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/networks" /> " >
                        <i class="fa fa-sitemap"></i>
                        Networks</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>

                                <li><a href="<c:url value="/category/networks/routers" />">Routers</a></li>
                                <li class="divider"><hr></li>
                                <li><a href="<c:url value="/category/networks/usb_modem" />">Usb Modems</a></li>
                                <li class="divider"><hr></li>
                        <li><a href="<c:url value="/category/networks/network_card" />">Cards</a></li>
                        <li class="divider"><hr></li>
            <li><a href="<c:url value="/category/networks/switch" />">Switchs</a></li>
                            </ul>
                        </li>
                    </ul>

                </li>




                <li class="dropdown mega-dropdown">
                    <a href="<c:url value="/category/accessories"/> " >
                        <i class="fa fa-headphones" ></i>
                        Accessories</a>
                    <ul class="dropdown-menu mega-dropdown-menu row">
                        <li class="col-sm-3">
                            <ul>

                                <li><a href="#">Unique Features</a></li>
                                <li><a href="#">Image Responsive</a></li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Newsletter Form</a></li>
                                <li><a href="#">Four columns</a></li>
                            </ul>
                        </li>
                    </ul>

                </li>




            </ul>

        </div>
        <!-- /.nav-collapse -->
    </nav>
</div>

