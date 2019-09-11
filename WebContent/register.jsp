<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Register</title>
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
                            <li class="nav-item active">
                                <a class="nav-link" href="about.jsp">关于我们 <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item dropdown">
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
                        <!-- ls 
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
                         ls -->
                    </div>
                </nav>
            </div>
        </header>
        <!-- //header -->
        <!-- banner-w3layouts -->
        <section class="banner-w3layouts">
            <div class="container">
                <div class="row banner-w3layouts-grids">
                    <div class="col-lg-5 sign-info" data-aos="fade-right">
                        <h3>创建账号</h3>
                        <p class="para-sign mt-2 mb-4 text-center">输入您的详细信息以创建帐户</p>
                        <form action="#" method="post">
                            <div class="form-group">

                                <label>姓名*</label>
                                <div class="icon1">
                                    <input placeholder="" id = "name" name="name" type="text" required="">
                                </div>
                            </div>
                            <div class="form-group">

                                <label>邮件*</label>
                                <div class="icon1">
                                    <input placeholder="" id = "email" name="mail" type="email" required="">
                                </div>
                            </div>
                            <div class="form-group">

                                <label>手机号*</label>
                                <div class="icon2">
                                    <input placeholder="" id = "phone" name="phone" type="text" required="">
                                </div>
                            </div>
                            <div class="form-group">

                                <label>密码*</label>
                                <div class="icon2">
                                    <input placeholder="" id = "password" name="password" type="password" required="">
                                </div>
                            </div>
                            <input type="button" id = "button" value="创建账户">
                            <p class="para-sign mt-3">是否拥有一个账户 ? <a href="signin.jsp" class="ml-2"><strong>登录</strong></a></p>
                        </form>

                    </div>
                    <div class="col-lg-7 banner-w3layouts-image pl-md-5">
                        <div class="effect-w3">
                            <img src="images/img4.jpg" alt="" class="img-fluid image1">
                            <img src="images/img4.jpg" alt="" class="img-fluid image2">
                            <img src="images/img4.jpg" alt="" class="img-fluid image3">
                            <img src="images/img4.jpg" alt="" class="img-fluid image4">
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- //banner-w3layouts -->
    </div>

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
    
    <!-- 刘帅 -->
    <script>
    	$("#button").on("click",function(){
    		var name = $("#name").val();
    		var email = $("#email").val();
    		var phone = $("#phone").val();
    		var password = $("#password").val();
    		
    		var mreg = /\w+@\w+/;	//邮箱验证
 			var preg = /\d+/;		//验证密码
 			var hreg = /\d{11}/;	//验证手机号
    		if ( name == "" || email == "" || phone == "" || password == "" ) {
    			alert("请在信息填写完毕之后注册！");
    			return;
    		}
    		if ( !mreg.test(email) ) {
 				alert("邮箱格式不正确！   正确格式：xxx@xxx");
 				return;
 			}
 			if ( !preg.test(password) ) {
 				alert("密码格式不正确！   正确格式：只能包含数字");
 				return;
 			}
 			if ( !hreg.test(phone) ) {
 				alert("手机号格式不正确！   正确格式：只能包含数字且为十一位数");
 				return;
 			}
 			
 			$.post("/companyblog/userServlet",{
 				op : 'register',
 				name : name,
 				email : email,
 				phone : phone,
 				password : password
 			},function(data){
 				if ( data == "name" ) {
 					alert("用户名已存在!");
 				} else if ( data == "email" ) {
 					alert("邮箱已存在!");
 				} else if ( data > 0 ) {
 					//注册成功，跳转到登录界面
 					location.href = "signin.jsp";
 				} else {
 					//注册失败，提示信息
 					alert("注册失败!");
 				}
 			});
    	});
    </script>
    
</body>

</html>
