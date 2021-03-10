<%@page import="java.util.ArrayList"%>
<%@page  import="com.webstore.app.model.Cart" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sản Phẩm Gia Dụng</title>
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
            $(document).ready(function() {
            	$('.active').removeClass('active');
            	$('.product').addClass('active');
            });
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
        <jsp:include page="header.jsp"></jsp:include>
            <div class="products">
                <div class="container">
                    <div class="col-md-4 products-left">
                        <div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
                            <h3>Lọc Theo Giá</h3>
                            <ul class="dropdown-menu1">
                                <li><a href="">								               
                                        <div id="slider-range"></div>							
                                        <input type="text" id="amount" style="border: 0" />
                                    </a></li>	
                            </ul>
                            <script type='text/javascript'>//<![CDATA[ 
                                $(window).load(function () {
            	                        $("#slider-range").slider({
            	                            range: true,
            	                            min: 500000,
            	                            max: 2000000,
            	                            values: [700000, 1500000],
            	                            slide: function (event, ui) {
            	                                $("#amount").val( ui.values[0] + " VNĐ - " + ui.values[1] + " VNĐ");
            	                            }
            	                        });
            	                        $("#amount").val($("#slider-range").slider("values", 0) + " VNĐ - " + $("#slider-range").slider("values", 1) + " VNĐ");
                                });
                            </script>
                            <script type="text/javascript" src="/resources/js/jquery-ui.min.js"></script>
                            <!---->
                        </div>
                        <div class="categories animated wow slideInUp" data-wow-delay=".5s">
                            <h3>Sản Phẩm</h3>
                            <ul class="cate">
                            	<c:forEach items="${categories}" var="c">
                                     <li>
                                          <a href="${c.categoryID}">${c.categoryName} </a>
                                     </li>
                                </c:forEach>
                        </ul>
                    </div>                   
                </div>
                <div class="col-md-8 products-right">
                    <div class="products-right-grid">
                        <div class="products-right-grids animated wow slideInRight" data-wow-delay=".5s">
                            <div class="clearfix"> </div>
                        </div>
                        <div class="products-right-grids-position animated wow slideInRight" data-wow-delay=".5s">
                            <img src="/resources/images/slider3.jpg" alt=" " class="img-responsive" />
                            <div class="products-right-grids-position1">
                                <h4>Hàng Mới</h4>
	                            </div>
                        </div>
                    </div>
                    <div class="products-right-grids-bottom">
                        <div class="col-md-6 new-collections-grid">
                            <div class="new-collections-grid-sub-grids">
                                <%-- <c:forEach items="${products}" var="p">
                                <div class="new-collections-grid1-sub" style="width: 30%;">
                                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp animated" data-wow-delay=".5s">
                                        <div class="new-collections-grid1-image" style="width: 190.99px">
                                            <a href="/shop/single/${p.productID}" class="product-image">
                                                <img style="width: 190.99px" src="${p.productImage}" alt=" " class="img-responsive" />
                                            </a>
                                            <div class="new-collections-grid1-image-pos">
                                                <a href="/shop/single/${p.productID}" >Xem Nhanh</a>
                                            </div>
                                            <div class="new-collections-grid1-right">
                                                <div class="rating">
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h4 style="font-size:16px"><a href="/shop/single/${p.productID}" >${p.productName}</a></h4>

                                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                                            <p><i></i> <span class="item_price" style="white-space: nowrap"><fmt:formatNumber value="${p.productPrice}" type="currency" currencySymbol=""/> VNĐ</span>
                                            <a class="item_add" href="/cart/plus/${p.productID}">Thêm Vào Giỏ Hàng </a></p>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach> --%>
                                <c:choose>
                                	<c:when test="${not empty products}">
                                		<c:forEach items="${products}" var="p">
                                <div class="new-collections-grid1-sub" style="width: 30%;">
                                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp animated" data-wow-delay=".5s">
                                        <div class="new-collections-grid1-image" style="width: 190.99px">
                                            <a href="/shop/single/${p.productID}" class="product-image">
                                                <img style="width: 190.99px" src="${p.productImage}" alt=" " class="img-responsive" />
                                            </a>
                                            <div class="new-collections-grid1-image-pos">
                                                <a href="/shop/single/${p.productID}" >Xem Nhanh</a>
                                            </div>
                                            <div class="new-collections-grid1-right">
                                                <div class="rating">
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="rating-left">
                                                        <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h4 style="font-size:16px"><a href="/shop/single/${p.productID}" >${p.productName}</a></h4>

                                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                                            <p><i></i> <span class="item_price" style="white-space: nowrap"><fmt:formatNumber value="${p.productPrice}" type="currency" currencySymbol=""/> VNĐ</span>
                                            <a class="item_add" style="cursor:pointer" onclick="addItem(${p.productID})">Thêm Vào Giỏ Hàng </a></p>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                                	</c:when>
                                	<c:otherwise>
                                		<div>
                                			<h3>Không tìm thấy sản phẩm.Xin vui lòng thử lại</h3>
                                		</div>
                                	</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
