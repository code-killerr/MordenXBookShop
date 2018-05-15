<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>登录界面</title>
		<link rel="stylesheet" href="view/css/reset.css" />
		<link rel="stylesheet" href="view/css/common.css" />
		<link rel="stylesheet" href="view/css/font-awesome.min.css" />
		<script type="text/javascript" src="view/js/jquery-1.11.2.js"></script>
		
	</head>
	<body>
		<div class="wrap login_wrap">
		
			<div class="content">
			
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							登录
						</div>
						<form action="LoginController" method="post">
							
							<div class="form_text_ipt">
								<input name="username" type="text" placeholder="手机号/邮箱/用户名">
							</div>
							<div class="ececk_warning"><span>手机号/邮箱不能为空</span></div>
							<div class="form_text_ipt">
								<input name="password" type="password" placeholder="密码">
							</div>
							<div class="ececk_warning"><span>密码不能为空</span></div>
							<div class="form_check_ipt">
								<div class="left check_left">
									<label><input name="" type="checkbox"> 下次自动登录</label>
								</div>
								<div class="right check_right">
									<a href="#">忘记密码</a>
								</div>
							</div>
							<div class="form_btn">
								<button type="sumbit" onclick="javascript:window.location.href='#'">登录</button>
							</div>
							<div class="form_reg_btn">
								<span>还没有帐号？</span><a href="register.jsp">马上注册</a>
							</div>
						</form>
						<div class="other_login">
							<div class="left other_left">
								<span>其它登录方式</span>
							</div>
							<div class="right other_right">
								<a href="#"><i class="fa fa-qq fa-2x"></i></a>
								<a href="#"><i class="fa fa-weixin fa-2x"></i></a>
								<a href="#"><i class="fa fa-weibo fa-2x"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="view/js/jquery.min.js" ></script>
		<script type="text/javascript" src="view/js/common.js" ></script>
	</body>
	<script>
	     
	    $(function(){
	    	//轮播图
	    	var cur=0;
	    	var $img=$("img");
	    	$img.eq(0).fadeIn();
	    	function lunbo(){
	    			$img.eq(cur).fadeIn(500).siblings().hide();
					cur++;
					cur = cur >= $img.length ? 0:cur;
					auto=setTimeout(lunbo,4000);
	    	}
	    	lunbo();
	    	//验证用户名或密码不能为空
	    	$("#logintrue").click(function(){
				if($("#username").val()=='' || $("#password").val()==''){
					$(".error-tips span").html("用户名或密码不能为空");
				}
		    })
	    	$("#username").focus(function(){
	    		$(".error-tips span").html(" ");
	    	})
	    	$("#password").focus(function(){
	    		$(".error-tips span").html(" ");
	    	})
	    })
	    
	    
	    
	
	</script>
</html>