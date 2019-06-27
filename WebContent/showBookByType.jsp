<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>MordenX小说网站</title>
		<link rel="stylesheet" type="text/css" href="view/css/base.css">
		<link rel="stylesheet" type="text/css" href="view/css/Sort.css">
		<script type="text/javascript" src="view/js/jquery-1.4.2.min.js"></script>

	</head>

	<body>
		<div class="all">
			<div class="header">
				<!--logo部分-->

				<!--导航栏-->
				<div class="header_nav">
					<ul class="hd_ul">
						<li class="hd_li">
							<a class="hdActive" href="index.jsp">主页</a>
						</li>
						<li class="hd_li">
							<a href="#">排行榜</a>
						</li>
						<li class="hd_li">
							<a href="html/newslist.html">免费</a>
						</li>
						<li class="hd_li">
							<a href="html/shoplist.html">完本</a>
						</li>
						<li class="hd_li">
							<a href="html/kfpt.html">现言青春</a>
						</li>
						<li class="hd_li">
							<a href="html/contus.html">古言玄幻</a>
						</li>
						<li class="hd_li">
							<a href="html/aboutme.html">神秘科幻</a>
						</li>
					</ul>
				</div>
				<!--导航栏结束-->
				<div class="header_enter">
					<a href="login.jsp"><span class="denter_span01">登录</span></a>
					<a class="denter_span02" href="register.jsp">注册</a>
				</div>
			</div>
			<div class="wrap">
				

				<div class="three_side fl" alog-group="catht_1" data-zlog="150">
					<div class="qtb list tabcontainer">
						<h4>
            <span class="tit tabtitle" tabid="1" onmouseover="jQuery(this).parent().removeClass('current');">最受欢迎</span>
            <span class="label tabtitle" tabid="2" onmouseover="jQuery(this).parent().addClass('current');">上周强推</span>
        </h4>
						<div class="tabpanel" tabid="1">
			
							<c:forEach items="${bookInfo }"  var="l" begin="0" end="0" step="1">
							<div class="tab_block">
								<h2 class="item" style="display: none;" >·<a class="book_style" href="javascript:void(0)" data-ack="150_0|150">${l.bookType}</a><a style="" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_1|150">${l.bookName }</a></h2>
								<div class="detail" style="display: block;">
									<em class="jrsj_plus li_sec" bookid="746273" title="加入书架"></em>
									<a class="mark63" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_2|150"><img src="view/img/${l.bookImage}"  style="width: 63px; height: 84px;"><span></span></a>
									<h3><a style="" href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="150_3|150">${l.bookName }</a></h3>
									<p>作者：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_4|150">${l.bookWriter }</a>
									</p>
									<p>类型：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_5|150">${l.bookType }</a>
									</p>
									<p class="tr">
										<a href="javascript:void(0)" target="_blank" data-ack="150_6|150">【阅读】</a>
									</p>
									<div class="cl0"></div>
								</div>
							</div>
							</c:forEach>
							
							<c:forEach items="${bookInfo }"  var="l" begin="1" end="9" step="1">
							<div class="tab_block">
								<h2 class="item" >·<a class="book_style" href="javascript:void(0)" data-ack="150_0|150">${l.bookType}</a><a style="" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_1|150">${l.bookName }</a></h2>
								<div class="detail">

									<em class="jrsj_plus li_sec" bookid="746273" title="加入书架"></em>
									<a class="mark63" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_2|150"><img src="view/img/${l.bookImage}"  style="width: 63px; height: 84px;"><span></span></a>
									<h3><a style="" href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="150_3|150">${l.bookName }</a></h3>
									<p>作者：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_4|150">${l.bookWriter }</a>
									</p>
									<p>类型：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_5|150">${l.bookType }</a>
									</p>
									<p class="tr">
										<a href="javascript:void(0)" target="_blank" data-ack="150_6|150">【阅读】</a>
									</p>
									<div class="cl0"></div>
								</div>
							</div>
							</c:forEach>
														<div class="more">
								<a href="javascript:void(0)"  target="_blank" data-ack="150_70|150">查看更多&gt;&gt;</a>
							</div>
						</div>
							

						
						
						<!-- 左2榜 -->
						<div class="tabpanel" style="display: none;" tabid="2">
							<div style="height: 368px;">
							<c:forEach items="${bookInfo }"  var="l" begin="9" end="9" step="1">
							<div class="tab_block">
								<h2 class="item" style="display: none;" >·<a class="book_style" href="javascript:void(0)" data-ack="150_0|150">${l.bookType}</a><a style="" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_1|150">${l.bookName }</a></h2>
								<div class="detail" style="display: block;">
									<em class="jrsj_plus li_sec" bookid="746273" title="加入书架"></em>
									<a class="mark63" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_2|150"><img src="view/img/${l.bookImage}"  style="width: 63px; height: 84px;"><span></span></a>
									<h3><a style="" href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="150_3|150">${l.bookName }</a></h3>
									<p>作者：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_4|150">${l.bookWriter }</a>
									</p>
									<p>类型：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_5|150">${l.bookType }</a>
									</p>
									<p class="tr">
										<a href="javascript:void(0)" target="_blank" data-ack="150_6|150">【阅读】</a>
									</p>
									<div class="cl0"></div>
								</div>
							</div>
							</c:forEach>
							
							<c:forEach items="${bookInfo }"  var="l" begin="10" end="14" step="1">
							<div class="tab_block">
								<h2 class="item" >·<a class="book_style" href="javascript:void(0)" data-ack="150_0|150">${l.bookType}</a><a style="" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_1|150">${l.bookName }</a></h2>
								<div class="detail">

									<em class="jrsj_plus li_sec" bookid="746273" title="加入书架"></em>
									<a class="mark63" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_2|150"><img src="view/img/${l.bookImage}"  style="width: 63px; height: 84px;"><span></span></a>
									<h3><a style="" href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="150_3|150">${l.bookName }</a></h3>
									<p>作者：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_4|150">${l.bookWriter }</a>
									</p>
									<p>类型：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_5|150">${l.bookType }</a>
									</p>
									<p class="tr">
										<a href="javascript:void(0)" target="_blank" data-ack="150_6|150">【阅读】</a>
									</p>
									<div class="cl0"></div>
								</div>
							</div>
							</c:forEach>

							<c:forEach items="${bookInfo }"  var="l" begin="0" end="3" step="1">
							<div class="tab_block">
								<h2 class="item" >·<a class="book_style" href="javascript:void(0)" data-ack="150_0|150">${l.bookType}</a><a style="" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_1|150">${l.bookName }</a></h2>
								<div class="detail">

									<em class="jrsj_plus li_sec" bookid="746273" title="加入书架"></em>
									<a class="mark63" href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="150_2|150"><img src="view/img/${l.bookImage}"  style="width: 63px; height: 84px;"><span></span></a>
									<h3><a style="" href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="150_3|150">${l.bookName }</a></h3>
									<p>作者：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_4|150">${l.bookWriter }</a>
									</p>
									<p>类型：
										<a href="javascript:void(0)"   target="_blank" data-ack="150_5|150">${l.bookType }</a>
									</p>
									<p class="tr">
										<a href="javascript:void(0)" target="_blank" data-ack="150_6|150">【阅读】</a>
									</p>
									<div class="cl0"></div>
								</div>
							</div>
							</c:forEach>

						</div>
								
							<div class="more">
								<a href="javascript:void(0)"  target="_blank" data-ack="150_70|150">查看更多&gt;&gt;</a>
							</div>
					</div>
					</div>	
				</div>
				<!-- 左榜结束 -->
				<div class="two_main fr">
					<div class="three_middle fl" alog-group="catht_2">

						<div class="scroll_pic box">
							<div id="slider" class="cont-block tb" data-zlog="151">
								<div class="tab-conts main_tab">
									<c:forEach items="${bookInfo }"  var="l" begin="0" end="0" step="1">
									<div class="tab-cont mtab current" style="opacity: 0.25;">
										<a href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="151_0|151"><img src="view/img/${l.bookImage}"  style="width: 210px; height: 280px;"></a>
									</div>
									</c:forEach>
									<c:forEach items="${bookInfo }"  var="l" begin="1" end="4" step="1">
									<div class="tab-cont mtab" style="opacity: 0.25;">
										<a href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="151_1|151"><img src="view/img/${l.bookImage}"  style="width: 210px; height: 280px;"></a>
									</div>
									</c:forEach>
								</div>
								
								<div class="ctabs side_tab">
									<c:forEach items="${bookInfo }"  var="l" begin="0" end="0" step="1">
									<div class="ctab stab current">
										<div class="tab_list">
											<a style="" href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="151_5|151">${l.bookName }<span >作者：${l.bookWriter }</span></a>
										</div>
										<div class="con">
											<p >这里是天堂，因为这里拥有地球上拥有的一切。所有你渴望的而又得不到的，在这里都可以得到；这里是地狱，因为每个人…</p>
											<div class="cl10"></div>
											<p class="tr">
												<a href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="151_6|151">【阅读】</a>
												<a class="jrsj" href="javascript:void(0)" bookid="666143" data-ack="151_7|151" title="加入书架">【收藏】</a>
											</p>
										</div>
									</div>
									</c:forEach>
									<c:forEach items="${bookInfo }"  var="l" begin="1" end="4" step="1">
									<div class="ctab stab">
										<div class="tab_list">
											<a style="" href="GetBookInfoController?bookName=${l.bookName }"  target="_blank" data-ack="151_5|151">${l.bookName }<span >作者：${l.bookWriter }</span></a>
										</div>
										<div class="con">
											<p >这里是天堂，因为这里拥有地球上拥有的一切。所有你渴望的而又得不到的，在这里都可以得到；这里是地狱，因为每个人…</p>
											<div class="cl10"></div>
											<p class="tr">
												<a href="GetBookInfoController?bookName=${l.bookName }" target="_blank" data-ack="151_6|151">【阅读】</a>
												<a class="jrsj" href="javascript:void(0)" bookid="666143" data-ack="151_7|151" title="加入书架">【收藏】</a>
											</p>
										</div>
									</div>
									</c:forEach>
								</div>
								<div class="cl0"></div>
							</div>
						</div>
						<!-- 分类大封推 结束 -->
					</div>
					<div class="three_side fr" data-zlog="152">
						<div class="news box">
							<div class="cl15"></div>

							<dl>
								<dt class="tc fs14">·<a class="fred" style="" href="javascript:void(0)" target="_blank" data-ack="152_0|152">神医来袭！医人医国妙手回春</a></dt>
								<dd>神医来袭！医人医国妙手回春</dd>
							</dl>
							<div class="line"></div>

							<dl>
								<dt class="tc fs14">·<a class="fred" style="" href="javascript:void(0)" target="_blank" data-ack="152_1|152">装神打小怪，智勇斗BOSS</a></dt>
								<dd>玄幻篇：装神打小怪，智勇斗BOSS</dd>
							</dl>
							<div class="line"></div>

							<dl>
								<dt class="tc fs14">·<a class="fred" style="" href="javascript:void(0)" target="_blank" data-ack="152_2|152">逆天金手指，谱写不灭神话！</a></dt>
								<dd>逆天金手指，谱写不灭神话！</dd>
							</dl>
							<div class="line"></div>
							<div class="more">
								<a href="javascript:void(0)" target="_blank" data-ack="152_3|152">查看更多&gt;&gt;</a>
							</div>
						</div>
					</div>
				</div>
				<div class="MiddleBottom fl">
						<div class="title fl">
							<em></em>
							<h1>新书推荐<h1>
							
						</div>
						<div class="NewBook fl">
							<div class="BookImg fl">
								<img src="view/img/2.jpg">
							</div>
							<div class="BookIntroduce fl">
								<h1><a src="">我欲封天</a></h1>
								<h2>作者:阿三</h2>
								<hr/>
								<h3>你们好，这是一个测试章节，测试能写多少个字</h3>
							</div>
						</div>
						<div class="NewBook fl">
							<div class="BookImg fl">
								<img src="view/img/1.jpg">
							</div>
							<div class="BookIntroduce fl">
								<h1><a src="">我欲封天</a></h1>
								<h2>作者:<a src="">阿三<a></h2>
								<hr/>
								<h3>你们好，这是一个测试章节，测试能写多少个字</h3>
							</div>
						</div>
					</div>
						
				</div>
			</div>
				
				<!-- 特效制作 -->
				
					<script type="text/javascript">
						$(function() {
							$(".side_tab .stab").hover(function() {
								var currentIndex = $(".side_tab .stab").index($(this));
								var my_pic = $(".mtab").eq(currentIndex);
								$(this).addClass("current");
								$(this).siblings().removeClass("current");
								my_pic.addClass("current").siblings().removeClass("current");
								$(".main_tab .current").fadeTo("slow", 1).siblings().css("opacity", 0.25);
								aa = currentIndex;
							})
						});

						var aa = 0;
						var xx = $(".tb").attr("id");

						function auto() {
							var tab_counts = $("#slider .side_tab .stab").length;
							if(aa < tab_counts - 1) {
								aa++;
							} else {
								aa = 0;
							}
							$("div.main_tab div").removeClass("current");
							$("div.side_tab div").removeClass("current");
							$(".mtab").eq(aa).addClass("current").fadeTo("slow", 1).siblings().css("opacity", 0.25);
							$(".side_tab .stab").eq(aa).addClass("current");
						}
						$(function() {
							var timer = null;
							$("#slider").hover(function() {
								clearInterval(timer);
							}, function() {
								timer = setInterval("auto()", 5000);
							}).mouseout();

						});
					</script>
					<!-- 页尾 结束 -->
					<script type="text/javascript" src="view/js/bookmark.min.js"></script>
					<script type="text/javascript" src="view/js/category.min.js"></script>
		</div>
	</body>

</html>