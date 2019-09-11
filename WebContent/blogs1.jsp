<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
<style>
    #hid p{
      white-space:nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
</style>
<head>
    <title>Blogs</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/portfolio.css">
    <link rel="stylesheet" href="css/aos.css">
    <link href='css/aos-animation.css' rel='stylesheet prefetch' type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700i" rel="stylesheet">
    <!-- //Fonts -->

</head>

<body>
    <!-- mian-content -->
    <div class="main-content" id="home">
        <!-- header -->
        <header class="py-1">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <h1>
                        <a class="navbar-brand" href="index.jsp"><i class="fa fa-ravelry" aria-hidden="true"></i></a>
                    </h1>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-4 m-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">关于我们 <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item dropdown active">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  更多信息 <i class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="features.jsp">特色</a>
                                    <a class="dropdown-item" href="blogs.jsp">博客</a>
                                    <a class="dropdown-item" href="features.jsp">服务</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  菜单 <i class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="gallery.jsp">画廊</a>
                                    <a class="dropdown-item" href="about.jsp">关于我们</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">建议</a>
                            </li>
                        </ul>
                        <!-- ls -->
                        <c:if test="${empty user }">
                        <div class="header-right">
                            <a href="signin.jsp" class="signin mr-4"> 登录 <i class="fas fa-sign-in-alt"></i></a>
                            <a href="register.jsp" class="contact">启 程</a>
                        </div>
                        </c:if>
                        <c:if test="${not empty user }">
                        <div class="header-right">
                            <a href="javascript:void(0);" class="signin mr-4"> ${user[0].uname } <i class="fas fa-sign-in-alt"></i></a>
                            <a href="javascript:void(0);" class="signin mr-4" onclick = "logout()">注 销</a>
                        </div>
                        </c:if>
                        <!-- ls -->
                    </div>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <!--/ab -->

    <!-- banner-w3layouts -->
    <section class="ab-info-main py-md-5 py-5">
        <div class="container py-md-5 py-5">
            <div class="ab-info-grids pt-md-5 pt-0" id="hid">
                <div class="blog-sec pt-md-3 pt-3">
                <div class="dropdown">
					  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    技术部
					  </button>
					  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					    <a class="dropdown-item" href="javascript:void(0)" onclick="toBlog1()">技术部</a>
					    <a class="dropdown-item" href="javascript:void(0)"  onclick="toBlog2()">人力资源部 </a>
					    <a class="dropdown-item" href="javascript:void(0)"  onclick="toBlog3()">总经理办公室</a>
					  </div>
					</div>
					
                    <h3 class="tittle text-uppercase text-center mb-lg-5 mb-3 inner-tittle"><span class="sub-tittle">Recent </span> Blog Posts</h3>
                    <div class="row mt-lg-5 mt-3">
                    <!-- ls -->
                        <div class="col-lg-8 blog-left-content">
                            <c:forEach var = "content" items = "${contents }" varStatus = "status">
                            <div class="card" data-aos="fade-up">
                                <a href="single.jsp"> <img class="card-img-top" src="/blog/${content.pics }" alt="Card image cap"></a>
                                <div class="card-body">
                                    <h6 class="date">
                                    	<span>By: ${content.department }</span> ${content.addtime }
                                    	<a href = "javascript:void(0);" onclick = "pick($(this), ${content.cid })" >
											<c:if test="${empty greats }">
												<span aria-hidden="true" style="float: right;" class="glyphicon glyphicon-star-empty"> 
													<c:if test="${content.star != 0 }">
														${content.star }
													</c:if> 
													<c:if test="${content.star == 0 }">
													</c:if>
												</span>
											</c:if> 
											<c:if test="${not empty greats }">
												<c:set var="flag" value="0"></c:set>
												<c:forEach var="great" items="${greats }" varStatus="status">
													<c:if test="${great.cid == content.cid }">
														<c:set var="flag" value="1"></c:set>
														<span aria-hidden="true" style="float: right;" class="glyphicon glyphicon-star"> 
															<c:if test="${content.star != 0 }">
																${content.star }
															</c:if> 
															<c:if test="${content.star == 0 }">
															</c:if>
														</span>
													</c:if>
												</c:forEach>
												<c:if test="${flag == 0 }">
													<span aria-hidden="true" style="float: right;" class="glyphicon glyphicon-star-empty"> 
														<c:if test="${content.star != 0 }">
															${content.star }
														</c:if> 
														<c:if test="${content.star == 0 }">
														</c:if>
													</span>
												</c:if>
											</c:if>
										</a>
                                    </h6>
                                    <h5 class="card-title"><a class="b-post text-dark" href="single.jsp">${content.title }</a></h5>
                                    <p class="card-text">${content.content }</p>
                                    <a class="btn btn-banner-w3layouts text-capitalize my-3" href="javascript:void(0);" onclick = "readmore(${content.cid })">Read More</a>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </div>
                            </div>
							</c:forEach>
                            <nav aria-label="Page navigation example mt-5">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="javascript:void(0);" onclick = "changePage(-1)">Previous</a>
                                    </li>
                                    <c:forEach var = "i" begin = "1" end = "${pages }">
                                    <li class="page-item">
                                        <a class="page-link" href="javascript:void(0);">${i }</a>
                                    </li>
                                    </c:forEach>
                                    <li class="page-item">
                                        <a class="page-link" href="javascript:void(0);" onclick = "changePage(1)">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <aside class="col-lg-4 blog-sldebar-right">
                            <div class="single-gd">
                                <!-- <img src="images/banner-w3layouts1.jpg" class="img-fluid" alt="">  -->
                                <h4>Sign up to our newsletter</h4>
                                <form action="#" method="post">
                                    <input type="email" name="Email" placeholder="Email" required="">
                                    <div class="button">
                                        <input type="submit" value="Subscribe">
                                    </div>
                                </form>
                            </div>
                            <div class="single-gd" data-aos="fade-up">
                                <h4>Our Progress</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="single-gd tech-btm" data-aos="fade-down">
                                <h4>Top stories of the week </h4>
                                <div class="blog-grids">
                                    <div class="blog-grid-left">
                                        <a href="single.jsp">
									<img src="images/b1.jpg" class="img-fluid" alt="">
								</a>
                                    </div>
                                    <div class="blog-grid-right">
                                        <h5>
                                            <a href="single.jsp">Pellentesque dui, non felis. Maecenas male</a>
                                        </h5>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="blog-grids">
                                    <div class="blog-grid-left">
                                        <a href="single.jsp">
									<img src="images/b2.jpg" class="img-fluid" alt="">
								</a>
                                    </div>
                                    <div class="blog-grid-right">
                                        <h5>
                                            <a href="single.jsp">Pellentesque dui, non felis. Maecenas male</a>
                                        </h5>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="blog-grids">
                                    <div class="blog-grid-left">
                                        <a href="single.jsp">
									<img src="images/b3.jpg" class="img-fluid" alt="">
								</a>
                                    </div>
                                    <div class="blog-grid-right">
                                        <h5>
                                            <a href="single.jsp">Pellentesque dui, non felis. Maecenas male</a>
                                        </h5>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="single-gd">
                                <h4>Accordion example</h4>
                                <div id="accordion">
                                    <div class="card">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											Collapsible Group Item #1
										</button>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                            <div class="card-body">
                                                Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingTwo">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											Collapsible Group Item #2
										</button>
                                            </h5>
                                        </div>
                                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                            <div class="card-body">
                                                Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingThree">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											Collapsible Group Item #3
										</button>
                                            </h5>
                                        </div>
                                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                            <div class="card-body">
                                                Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- //banner-w3layouts -->


    <!--/newsletter -->

    <!--//newsletter-->
    <!--footer -->
    <footer>
        <section class="footer footer_1its py-5">
            <div class="container py-md-4">

                <div class="row footer-top mb-md-5 mb-4">
                    <div class="col-lg-4 col-md-6 footer-grid_section_1its" data-aos="fade-right">
                        <div class="footer-title-w3ls">
                            <h3>Address</h3>
                        </div>
                        <div class="footer-text">
                            <p>Address : 1234 lock, Charlotte, North Carolina, United States</p>
                            <p>Phone : +12 534894364</p>
                            <p>Email : <a href="mailto:info@example.com">info@example.com</a></p>
                            <p>Fax : +12 534894364</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-md-0 mt-4 footer-grid_section_1its">
                        <div class="footer-title-w3ls">
                            <h3>Quick Links</h3>
                        </div>
                        <div class="row">
                            <ul class="col-6 links">
                                <li><a href="about.jsp">Why Choose Us </a></li>
                                <li><a href="about.jsp">Overview </a></li>
                                <li><a href="plans.jsp">Pricing Plans</a></li>

                                <li><a href="gallery.jsp">Gallery</a></li>
                                <li><a href="contact.jsp">Contact </a></li>
                            </ul>
                            <ul class="col-6 links">
                                <li><a href="#">Privacy Policy </a></li>
                                <li><a href="#">General Terms </a></li>
                                <li><a href="#faq" class="scroll">Faq's </a></li>
                                <li><a href="#">Knowledge </a></li>
                                <li><a href="#">Forum </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 mt-lg-0 mt-4 col-sm-12 footer-grid_section_1its" data-aos="fade-left">
                        <div class="footer-title-w3ls">
                            <h3>Newsletter</h3>
                        </div>
                        <div class="footer-text">
                            <p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
                            <form action="#" method="post">
                                <input type="email" name="Email" placeholder="Enter your email..." required="">
                                <button class="btn1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                                <div class="clearfix"> </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="footer-grid_section text-center">
                    <div class="footer-title-w3ls mb-3" data-aos="fade-up">
                        <a href="index.jsp" class="text-uppercase"><i class="fa fa-ravelry" aria-hidden="true"></i> Slog</a>
                    </div>
                    <div class="footer-text">
                        <p data-aos="fade-up">Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ipnut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur elit.</p>
                    </div>
                    <ul class="social_section_1info" data-aos="fade-up">
                        <li class="mb-2 facebook"><a href="#"><i class="fa fa-facebook mr-1"></i>facebook</a></li>
                        <li class="mb-2 twitter"><a href="#"><i class="fa fa-twitter mr-1"></i>twitter</a></li>
                        <li class="google"><a href="#"><i class="fa fa-google-plus mr-1"></i>google</a></li>
                        <li class="linkedin"><a href="#"><i class="fa fa-linkedin mr-1"></i>linkedin</a></li>
                    </ul>
                </div>

            </div>
        </section>
    </footer>
    <!-- //footer -->
    <!-- copy-w3layoutsright -->
    <div class="cpy-right text-center py-3">
        <p class="copy-w3layouts">Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家"></a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank"></a>
        </p>
    </div>
    <!-- //copy-w3layoutsright -->
    <!--model-forms-->
    <!--/Login-->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-left">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-left mb-4">Login Now</h5>
                        <form action="#" method="post">
                            <div class="form-group">
                                <label class="mb-2">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="" required="">
                            </div>
                            <div class="form-check mb-2">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <button type="submit" class="btn btn-primary submit mb-4">Sign In</button>
                            <p class="text-left pb-4">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter2"> Don't have an account?</a>
                            </p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--//Login-->
    <!--/Register-->
    <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-left">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-left mb-4">Register Now</h5>
                        <form action="#" method="post">
                            <div class="form-group">
                                <label>First name</label>

                                <input type="text" class="form-control" id="validationDefault01" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Last name</label>
                                <input type="text" class="form-control" id="validationDefault02" placeholder="" required="">
                            </div>

                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <input type="password" class="form-control" id="password1" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input type="password" class="form-control" id="password2" placeholder="" required="">
                            </div>

                            <button type="submit" class="btn btn-primary submit mb-4">Register</button>
                            <p class="text-left pb-4">
                                <a href="#">By clicking Register, I agree to your terms</a>
                            </p>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--//Register-->
    <script src="https://cdn.bootcss.com/popper.js/1.14.7/umd/popper.min.js"></script>;
    <script src="js/jquery-2.2.3.min.js"></script>
    <!--/aos -->
    <script src="js/aos.js"></script>
    <script>
        AOS.init({
            easing: 'ease-out-back',
            duration: 1000
        });

    </script>
    <!--//aos -->
    <!--/ start-smoth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });

    </script>
    <script>
        $(document).ready(function() {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });

    </script>

    <script src="js/bootstrap.js"></script>
	
	<script>
		//分页
		function changePage(num){
			var page = ${page};
			var pages = ${pages};
			
			if ( (page+num) <= 0 || (page+num) > pages ) {

				//说明是第一页，不分页     ||  超过最大页
				return;
			}
			$.post("/companyblog/blogServlet",{
				op : 'changePage1',
				page : page+num
			},function(data){
				if ( data == 0 ) {
					alert("分页出错！");
				} else if ( data == 1 ) {
					location.reload();    //重新加载页面
				}
			});
		}
		
	  //注销
		function logout(){
			$.post("/companyblog/userServlet",{
				op : 'logout'
			},function(data){
				if ( data == 1 ) {
					location.href = "index.jsp";
				} else {
					alert("注销失败！");
				}
			});
		}
		function toBlog1(){
			$.post("/companyblog/blogServlet",{
				op : 'toBlog1'
			},function(data){
				if ( data == 1 ) {
					location.href = "blogs1.jsp";
				} else {
					alert("获取内容失败！");
				}
			});
		}
		function toBlog2(){
			$.post("/companyblog/blogServlet",{
				op : 'toBlog2'
			},function(data){
				if ( data == 1 ) {
					location.href = "blogs2.jsp";
				} else {
					alert("获取内容失败！");
				}
			});
		}
		function toBlog3(){
			$.post("/companyblog/blogServlet",{
				op : 'toBlog3'
			},function(data){
				if ( data == 1 ) {
					location.href = "blogs3.jsp";
				} else {
					alert("获取内容失败！");
				}
			});
		}
		
		 //阅读更多
		  function readmore(cid){
			  $.post("/companyblog/blogServlet",{
					op : 'readmore',
					cid : cid
				},function(data){
					if ( data == 1 ) {
						location.href = "single.jsp";
					} else {
						alert("读取数据失败！");
					}
				});
		  }
		 
		  //点赞
		  function pick(obj,cid){
			  obj = obj.children("span").eq(0);
			  var cla = obj.attr("class");
			  var num = obj.text();
			  var option = "";
			  //先判断用户是否登录
			  if (${empty user }) {
				  alert("请先登录！");
				  location.href = "signin.jsp";
				  return;
			  }
			  //console.log(num);
			  //console.log(cid);
			  if ( cla == "glyphicon glyphicon-star-empty" ) {
				  obj.attr("class", "glyphicon glyphicon-star");
				  if ( num == "" ) {
					  num = 0;
				  }
				  num ++;
				  obj.text(num);
				  
				  option = "add";
			  } else if ( cla == "glyphicon glyphicon-star" ) {
				  obj.attr("class", "glyphicon glyphicon-star-empty");
				  num --;
				  if ( num == 0 ) {
					  obj.text("");
				  } else {
					  obj.text(num);
				  }
				  
				  option = "subtract";
			  }
			  
				//发送ajax点赞或取消赞
			  $.post("/companyblog/blogServlet",{
				  op : 'pick',
				  cid : cid,
				  option : option
			  },function(data){
				  if ( data > 0 ) {
					  //点赞成功
				  } else {
					  alert("点赞失败！");
				  }
			  });
		  }
	</script>    

</body>

</html>
