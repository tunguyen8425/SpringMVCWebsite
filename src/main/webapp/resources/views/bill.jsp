<%@page import="com.webstore.app.model.Item"%>
<%@page import="java.util.Map"%>
<%@ page import="com.webstore.app.model.Cart"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ĐỒ GIA DỤNG CHO MỌI NHÀ</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="/resources/js/jquery.min.js"></script>
        <script src="/resources/js/bootstrap-notify.min.js"></script>
        <!-- //js -->
        <link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">
        <!-- for bootstrap working -->
        <script type="text/javascript" src="/resources/js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <!-- animation-effect -->
        <link href="/resources/css/animate.min.css" rel="stylesheet"> 
        <script src="/resources/js/wow.min.js"></script>
        <script>
            new WOW().init();
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=352114845163521";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        
        	function addItem(id){
        		$.ajax({
    				url : "/cart/plus/"+id,
    				type : "GET",
    				async : false,
    				success : function(result) {
    					window.location.reload();
    				},
    				error : function(jqXHR, status, errorThrown) {
    					console.log(errorThrown);
    				}
    				});
        	}
        	function subItem(id){
        		$.ajax({
    				url : "/cart/sub/"+id,
    				type : "GET",
    				async : false,
    				success : function(result) {
    					window.location.reload();
    				},
    				error : function(jqXHR, status, errorThrown) {
    					console.log(errorThrown);
    				}
    				});
        	}
        	function removeItem(id){
        		$.ajax({
    				url : "/cart/remove/"+id,
    				type : "GET",
    				async : false,
    				success : function(result) {
    					window.location.reload();
    				},
    				error : function(jqXHR, status, errorThrown) {
    					console.log(errorThrown);
    				}
    				});
        	}
        	
        </script>
        <!-- //animation-effect -->

    </head>
    <body>
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <div class="header">
        <div class="container">
            <div class="header-grid">
                <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                    <ul>
                        <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
                        	<c:choose>
                        		<c:when test="${not empty user}">
                        			<a href="mailto:${user.userEmail}">${user.userEmail}</a>
                        		</c:when>
                        		<c:otherwise>
                        			<a href="mailto:info@example.com">info@examle.com</a>
                        		</c:otherwise>
                        	</c:choose>
                        </li>
                            <%                                if (session.getAttribute("user") != null) {
                            %>
                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href='/shop/logout'>Thoát</a></li>

                        <%} else {%>
	                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="/shop/login">Đăng Nhập</a></li>
	                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="/shop/register">Đăng Ký</a></li>
                        <%}%>

                    </ul>
                </div>
                <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
                    <ul class="social-icons">
                        <li><a href="https://www.facebook.com" class="facebook"></a></li>
                        <li><a href="#" class="twitter"></a></li>
                        <li><a href="https://www.gmail.com" class="g"></a></li>
                        <li><a href="#" class="instagram"></a></li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="logo-nav">
                <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                    <h1><a href="/shop/homepage">ĐỒ GIA DỤNG<span>Shop anywhere</span></a></h1>
                </div>
                <div class="logo-nav-left1">
                    <nav class="navbar navbar-default">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header nav_2">
                            <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div> 
                        <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                            <ul class="nav navbar-nav">
                                <li class="active homepage"><a href="/shop/homepage" class="act">Trang chủ</a></li>	
                                <!-- Mega Menu -->
                                <li class="dropdown product">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sản phẩm<b class="caret"></b></a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <ul class="multi-column-dropdown">
                                                    <c:forEach items="${categories}" var="c">
                                                    	<li>
                                                        	<a href="/shop/single/product/${c.categoryID}">${c.categoryName}
                                                        	</a>
                                                   	 	</li>
                                                    </c:forEach>
                                                </ul>

                                            </div>


                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>                                
                                <li class="dropdown policy">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Chính Sách <b class="caret"></b></a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <ul class="multi-column-dropdown">                                                  
                                                    <li><a href="/shop/delivery">Chính Sách Giao Hàng</a></li>
                                                    <li><a href="/shop/delivery">Chính Sách Bảo Hành</a></li>
                                                </ul>
                                            </div>                                                                                       
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>
                                <li class="contact" ><a href="/shop/contact">Liên hệ</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="logo-nav-right">
                    <div class="search-box">
                        <div id="sb-search" class="sb-search sb-search-open">
                            <form action="/shop/product/search">
                                <input class="sb-search-input" name="keyword" placeholder="Mời bạn nhập sản phẩm cần tìm..." type="search" id="search">
                                <input class="sb-search-submit" type="submit" value="">
                                <span class="sb-icon-search"> </span>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="header-right">
                    <div class="cart box_1">
                        <a href="/shop/checkout">
                            <h3> 
                                <div class="total">
                                    <span class="simpleCart_total">${totalPrices.longValue()}</span> VNĐ
                                    (<span id="simpleCart_quantity" class="simpleCart_quantity">${quantity}</span> Sản Phẩm)
                                </div>
                                <img src="/resources/images/bag.png" alt="" />
                            </h3>
                        </a>
                        <p><a href="javascript:;" class="simpleCart_empty">Giỏ Hàng</a></p>
                        <div class="clearfix"> </div>
                    </div>	
                </div>
                <div class="clearfix"> </div>
                <input  type="hidden" class="active-holder" val=${menu}/>
            </div>
        </div>
        <script>
        </script>
    </div>
            <div class="checkout">
                <div class="container">
                    <div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
               			<c:choose>
               				<c:when test="${not empty bills}">
               					<table class="timetable_sub">
			                            <thead>
			                                <tr>
			                                    <th>STT</th>
			                                    <th>Hình Sản Phẩm</th>
			                                    <th>Số Lượng</th>
			                                    <th>Tên Sản Phẩm</th>
			                                    <th>Đơn Giá</th>
			                                </tr>
			                            </thead>
									<c:forEach items="${bills}" var="i" varStatus="loop">
										 <tr class="rem1">
					                            <td class="invert">${loop.index + 1}</td>
					                            <td class="invert-image" style="width:25% ">
					                                <a href="single/${i.productId}">
					                                    <img src="${i.productImage}" alt=" " class="img-responsive" />
					                                </a>
					                            </td>
					                            <td class="invert" style="width: 15%">
					                                <div class="quantity"> 
					                                    <div class="quantity-select">                           
					                                        <div class="entry value" id="valuequantity"><span>${i.quantity}</span></div>
					                                    </div>
					                                </div>
					                            </td>
					                            <td class="invert" style="width: 30%">${i.product}</td>
					                            <td class="invert">${i.price.longValue()}</td>
					                        </tr>
									</c:forEach>
			                    </table>
               				</c:when>
               				
               				<c:otherwise>
               				
               				</c:otherwise>
               			</c:choose>         
                	</div>
            	</div>
        	</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
