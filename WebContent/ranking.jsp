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
		<link rel="stylesheet" type="text/css" href="view/css/Ranking.css">

		<script type="text/javascript" src="view/js/jquery-1.4.2.min.js"></script>
	</head>

	<body>
		<canvas id="canvas" style="position: fixed;"></canvas>
			
		<div class="Ranking_all">
		
			<script type="text/javascript" src="view/js/canves.js"></script>
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
					<c:choose>
        	<c:when test="${fn:length(userInfo)==0}">
        		<a href="login.jsp"><span class="denter_span01">登录</span></a>
        		<a class="denter_span02" href="register.jsp">注册</a>
        	</c:when>
            <c:otherwise>
            	<c:forEach items="${userInfo }" var="item">
					<a class="denter_span01" href="userInfo.jsp?userName=${item.username}"><span >${item.username}</span></a>
        			<a class="denter_span02" href="leave.jsp">注销</a>
    			</c:forEach>
            </c:otherwise>
            </c:choose>
				</div>
			</div>
			<!--header结束-->
			
			<div class="Ranking_body">
				
				<div class=Ranking_Left>
					<p class="word">观众推荐</p>
					<div class = "left_body">
						<ul class="lui">
							<li><a class="lword">我欲封天</a></li>
						<hr/>
							<li><a class="lword">我欲封天</a></li>
						<hr/>
							<li><a class="lword">我欲封天</a></li>
						<hr/>
							<li><a class="lword">我欲封天</a></li>
						<hr/>
							<li><a class="lword">我欲封天</a></li>
						<hr/>
						</ul>
					</div>
					
				</div>
				<div class=Ranking_Middle>
					<p class="word">人气榜单</p>
					<div class="two_main fr tab tab_f">
						<div class="box zh_tit" style="width: 755px;">
							<h2 class="bd_title" style="width: 100%;"><em></em>综合排行榜</h2>
						</div>
						<div class="cl10"></div>
						<div class="ph_list box mar_left10" style="height: 380px;">
							<div class="title">
								<span>网络小说月票榜</span></div>
							<div class="book_list">
								<ul id="monthTicketRankList" style="padding-top: 10px;">
									<li><span>11416</span><em class="list_icon top jrsj_plus li_sec" bookid="510426" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>11179</span><em class="list_icon top jrsj_plus li_sec" bookid="747843" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>9935</span><em class="list_icon top jrsj_plus" bookid="672340" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>9492</span><em class="list_icon jrsj_plus li_sec" bookid="714691" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>9088</span><em class="list_icon jrsj_plus li_sec" bookid="682920" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>5346</span><em class="list_icon jrsj_plus li_sec" bookid="547156" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>3069</span><em class="list_icon jrsj_plus li_sec" bookid="735577" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>2850</span><em class="list_icon jrsj_plus li_sec" bookid="665301" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li><span>2587</span><em class="list_icon jrsj_plus" bookid="489242" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
									<li class="last"><span>2574</span><em class="list_icon jrsj_plus" bookid="490372" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=锦衣春秋" target="_blank">锦衣春秋</a>
									</li>
								</ul>
								<div class="more">
									<a href="javaScript(0)">查看更多&gt;&gt;</a>
								</div>
							</div>
						</div>
						
						<div class="box ph_list mar_left10 tabcontainer">
							<div class="head">
								<span class="date fr">
            						<em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
            						<em class="tabtitle" tabid="2">周<b class="triangle_down"></b></em>
            						<em class="tabtitle current" tabid="3">月<b class="triangle_down"></b></em>
        						</span>
								<span>言情小说点击榜</span>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="1">
								<ul>

									<li><span>403</span><em class="list_icon top jrsj_plus" bookid="650478" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li><span>291</span><em class="list_icon top jrsj_plus" bookid="721987" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li><span>228</span><em class="list_icon top jrsj_plus" bookid="594715" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li><span>156</span><em class="list_icon jrsj_plus" bookid="746137" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li><span>96</span><em class="list_icon jrsj_plus" bookid="740404" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>

									<li><span>75</span><em class="list_icon jrsj_plus" bookid="728956" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li><span>70</span><em class="list_icon jrsj_plus" bookid="689525" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li><span>64</span><em class="list_icon jrsj_plus" bookid="710001" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li><span>61</span><em class="list_icon jrsj_plus" bookid="745927" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

									<li class="last"><span>57</span><em class="list_icon jrsj_plus" bookid="733488" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=重生傀儡很吃香" target="_blank">重生傀儡很吃香</a>
									</li>

								</ul>
								<div class="more">
									<a href="" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" tabid="2" style="display: none;">
								<ul>

									<li><span>7978</span><em class="list_icon top jrsj_plus li_sec" bookid="662838" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>5911</span><em class="list_icon top jrsj_plus li_sec" bookid="454178" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>5308</span><em class="list_icon top jrsj_plus" bookid="378327" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>3098</span><em class="list_icon jrsj_plus" bookid="222011" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>1801</span><em class="list_icon jrsj_plus" bookid="439120" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>1737</span><em class="list_icon jrsj_plus" bookid="99426" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>1670</span><em class="list_icon jrsj_plus" bookid="458829" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>1560</span><em class="list_icon jrsj_plus" bookid="318263" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li><span>1452</span><em class="list_icon jrsj_plus" bookid="423793" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

									<li class="last"><span>1417</span><em class="list_icon jrsj_plus" bookid="476962" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=我的老公是尸王" target="_blank">我的老公是尸王</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://huayu.baidu.com/store/c0/c0/u1/p1/v0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: block;" tabid="3">
								<ul>

									<li><span>137351</span><em class="list_icon top jrsj_plus li_sec" bookid="662838" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>
									</li>

									<li><span>98630</span><em class="list_icon top jrsj_plus li_sec" bookid="378327" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>
									</li>

									<li><span>87277</span><em class="list_icon top jrsj_plus" bookid="454178" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>
									</li>

									<li><span>46768</span><em class="list_icon jrsj_plus" bookid="222011" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>
									</li>

									<li><span>43995</span><em class="list_icon jrsj_plus" bookid="608830" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>
									</li>

									<li><span>41831</span><em class="list_icon jrsj_plus" bookid="423793" order="6" title="加入书架">6</em>
										
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>

									<li><span>40108</span><em class="list_icon jrsj_plus" bookid="99426" order="7" title="加入书架">7</em>

									<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>

									<li><span>30624</span><em class="list_icon jrsj_plus" bookid="446948" order="8" title="加入书架">8</em>
										
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>
									<li><span>30607</span><em class="list_icon jrsj_plus" bookid="439120" order="9" title="加入书架">9</em>
										
										<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>

									<li class="last"><span>30055</span><em class="list_icon jrsj_plus" bookid="476962" order="10" title="加入书架">10</em>
										
									<a href="GetBookInfoController?bookName=惹爱成瘾" target="_blank">惹爱成瘾</a>

								</ul>
								<div class="more">
									<a href="http://huayu.baidu.com/store/c0/c0/u1/p1/v0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
						</div>
						<!-- 女主笔点击榜 结束 -->
						<!-- 读者消费榜 -->

						<div class="box ph_list tabcontainer mar_left10">
							<div class="head">
								<span class="date fr">
            						<em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
            						<em class="tabtitle current" tabid="2">周<b class="triangle_down"></b></em>
            						<em class="tabtitle" tabid="3">月<b class="triangle_down"></b></em>
        						</span>
								<span>读者消费榜</span>
							</div>
							<div class="book_list tabpanel" tabid="1" style="display: none;">
								<ul>

									<li>
										<span>1040021</span><em class="list_icon top">1</em>
										<a href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>400009</span><em class="list_icon top">2</em>
										<a  href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>210009</span><em class="list_icon top">3</em>
										<a  href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>200200</span><em class="list_icon">4</em>
										<a href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>200027</span><em class="list_icon">5</em>
										<a href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>200021</span><em class="list_icon">6</em>
										<a href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>200000</span><em class="list_icon">7</em>
										<a href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>200000</span><em class="list_icon">8</em>
										<a href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li>

										<span>200000</span><em class="list_icon">9</em>
										<a href="GetBookInfoController?bookName=咸鱼夏至" target="_blank">咸鱼夏至</a>
									</li>

									<li class="last">

										<span>200000</span><em class="list_icon">10</em>
										<a href="http://home.zongheng.com/show/userInfo/14848839.html" target="_blank">小恪9</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/rank/user/r22/c0/q0/1.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: block;" tabid="2">
								<ul>

									<li>

										<span>1040075</span><em class="list_icon top">1</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

									<li>

										<span>481000</span><em class="list_icon top">2</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

									<li>

										<span>400045</span><em class="list_icon top">3</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

									<li>

										<span>374009</span><em class="list_icon">4</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

									<li>

										<span>330000</span><em class="list_icon">5</em>
										<a href="http://home.zongheng.com/show/userInfo/49284990.html" target="_blank">Arvin_Liu</a>
									</li>

									<li>

										<span>240000</span><em class="list_icon">6</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

									<li>

										<span>210024</span><em class="list_icon">7</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

									<li>

										<span>210015</span><em class="list_icon">8</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

									<li>

										<span>201030</span><em class="list_icon">9</em>
										<a href="http://home.zongheng.com/show/userInfo/4795.html" target="_blank">公元</a>
									</li>

									<li class="last">

										<span>200400</span><em class="list_icon">10</em>
										<a href="GetBookInfoController?bookName=镇北王" target="_blank">镇北王</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/rank/user/r22/c0/q0/1.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="3">
								<ul>

									<li>

										<span>3656266</span><em class="list_icon top">1</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000108</span><em class="list_icon top">2</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000000</span><em class="list_icon top">3</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000000</span><em class="list_icon">4</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000000</span><em class="list_icon">5</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000000</span><em class="list_icon">6</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000000</span><em class="list_icon">7</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000000</span><em class="list_icon">8</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li>

										<span>2000000</span><em class="list_icon">9</em>
									<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

									<li class="last">

										<span>1401000</span><em class="list_icon">10</em>
										<a href="GetBookInfoController?bookName=狂徒911" target="_blank">狂徒911</a>
									</li>

								</ul>
								<div class="more">
									<a href="Javascript:void(0)" target="">查看更多&gt;&gt;</a>
								</div>
							</div>
						</div>
						<!-- 读者消费榜 结束 -->
						<div class="cl15"></div>
						<div class="box zh_tit" style="width: 755px;">
							<h2 class="bd_title"><em></em>分类小说排行榜</h2>
						</div>
						<div class="cl10"></div>
						<div class="box ph_list mar_left10 tabcontainer">
							<!-- 分类点击榜 rankType: 36, 44, 52 -->

							<!-- 分类点击榜 -->
							<div class="head">
								<span class="date fr">
        <em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
        <em class="tabtitle current" tabid="2">周<b class="triangle_down"></b></em>
        <em class="tabtitle" tabid="3">月<b class="triangle_down"></b></em>
    </span>
								<span>奇幻玄幻点击榜</span>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="1">
								<ul>

									<li><span>170958</span><em class="list_icon top jrsj_plus" bookid="555035" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>163832</span><em class="list_icon top jrsj_plus" bookid="682920" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>146872</span><em class="list_icon top jrsj_plus" bookid="739185" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>120324</span><em class="list_icon jrsj_plus" bookid="309318" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>86700</span><em class="list_icon jrsj_plus" bookid="481225" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>16623</span><em class="list_icon jrsj_plus" bookid="671552" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>15642</span><em class="list_icon jrsj_plus" bookid="685640" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>10602</span><em class="list_icon jrsj_plus" bookid="288345" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li><span>7525</span><em class="list_icon jrsj_plus" bookid="734818" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

									<li class="last"><span>4780</span><em class="list_icon jrsj_plus" bookid="711996" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=元尊" target="_blank">元尊</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c1/c0/b9/u12/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" tabid="2">
								<ul>

									<li><span>701612</span><em class="list_icon top jrsj_plus" bookid="682920" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>677955</span><em class="list_icon top jrsj_plus" bookid="555035" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>534311</span><em class="list_icon top jrsj_plus" bookid="685640" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>322598</span><em class="list_icon jrsj_plus" bookid="739185" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>259577</span><em class="list_icon jrsj_plus" bookid="309318" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>185490</span><em class="list_icon jrsj_plus" bookid="481225" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>146952</span><em class="list_icon jrsj_plus" bookid="671552" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>100667</span><em class="list_icon jrsj_plus" bookid="435710" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li><span>82092</span><em class="list_icon jrsj_plus" bookid="408586" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

									<li class="last"><span>32098</span><em class="list_icon jrsj_plus" bookid="342974" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=圣武星辰" target="_blank">圣武星辰</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c1/c0/b9/u9/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="3">
								<ul>

									<li><span>10247422</span><em class="list_icon top jrsj_plus" bookid="682920" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>9718820</span><em class="list_icon top jrsj_plus" bookid="555035" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>8230721</span><em class="list_icon top jrsj_plus" bookid="685640" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>7682750</span><em class="list_icon jrsj_plus" bookid="309318" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>1983373</span><em class="list_icon jrsj_plus" bookid="481225" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>1829247</span><em class="list_icon jrsj_plus" bookid="408586" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>1722494</span><em class="list_icon jrsj_plus" bookid="435710" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>1370650</span><em class="list_icon jrsj_plus" bookid="739185" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li><span>730282</span><em class="list_icon jrsj_plus" bookid="671552" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

									<li class="last"><span>618385</span><em class="list_icon jrsj_plus" bookid="342974" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=大逆之门" target="_blank">大逆之门</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c1/c0/b9/u6/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>

						</div>
						<div class="box ph_list mar_left10 tabcontainer">
							<!-- 武侠·仙侠 分类点击榜 -->
							<!-- 分类点击榜 rankType: 37, 45, 53 -->

							<!-- 分类点击榜 -->
							<div class="head">
								<span class="date fr">
        <em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
        <em class="tabtitle current" tabid="2">周<b class="triangle_down"></b></em>
        <em class="tabtitle" tabid="3">月<b class="triangle_down"></b></em>
    </span>
								<span>武侠仙侠点击榜</span>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="1">
								<ul>

									<li><span>24342</span><em class="list_icon top jrsj_plus" bookid="708632" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>6052</span><em class="list_icon top jrsj_plus" bookid="688697" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>2957</span><em class="list_icon top jrsj_plus" bookid="746727" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>2804</span><em class="list_icon jrsj_plus" bookid="688118" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>631</span><em class="list_icon jrsj_plus" bookid="737455" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>562</span><em class="list_icon jrsj_plus" bookid="672340" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>269</span><em class="list_icon jrsj_plus" bookid="734300" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>127</span><em class="list_icon jrsj_plus" bookid="663637" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li><span>107</span><em class="list_icon jrsj_plus" bookid="736682" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

									<li class="last"><span>47</span><em class="list_icon jrsj_plus" bookid="352542" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=阴阳至道" target="_blank">阴阳至道</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c3/c0/b9/u12/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" tabid="2">
								<ul>

									<li><span>214585</span><em class="list_icon top jrsj_plus" bookid="672340" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>126522</span><em class="list_icon top jrsj_plus" bookid="708632" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>65293</span><em class="list_icon top jrsj_plus" bookid="688697" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>17453</span><em class="list_icon jrsj_plus" bookid="352542" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>14825</span><em class="list_icon jrsj_plus" bookid="377897" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>5767</span><em class="list_icon jrsj_plus" bookid="688118" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>5054</span><em class="list_icon jrsj_plus" bookid="746727" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>2566</span><em class="list_icon jrsj_plus" bookid="744979" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li><span>1976</span><em class="list_icon jrsj_plus" bookid="117529" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

									<li class="last"><span>1720</span><em class="list_icon jrsj_plus" bookid="95252" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=万空道仙" target="_blank">万空道仙</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c3/c0/b9/u9/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="3">
								<ul>

									<li><span>2851643</span><em class="list_icon top jrsj_plus" bookid="672340" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>1567402</span><em class="list_icon top jrsj_plus" bookid="708632" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>860834</span><em class="list_icon top jrsj_plus" bookid="688697" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>289446</span><em class="list_icon jrsj_plus" bookid="352542" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>237285</span><em class="list_icon jrsj_plus" bookid="377897" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>37384</span><em class="list_icon jrsj_plus" bookid="95252" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>33230</span><em class="list_icon jrsj_plus" bookid="117529" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>29034</span><em class="list_icon jrsj_plus" bookid="401153" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li><span>28200</span><em class="list_icon jrsj_plus" bookid="45669" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

									<li class="last"><span>27119</span><em class="list_icon jrsj_plus" bookid="610743" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=偷香高手" target="_blank">偷香高手</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c3/c0/b9/u6/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>

						</div>
						<div class="box ph_list tabcontainer mar_left10">
							<!-- 历史·军事 分类点击榜 -->

							<!-- 分类点击榜 -->
							<div class="head">
								<span class="date fr">
        <em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
        <em class="tabtitle current" tabid="2">周<b class="triangle_down"></b></em>
        <em class="tabtitle" tabid="3">月<b class="triangle_down"></b></em>
    </span>
								<span>历史军事点击榜</span>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="1">
								<ul>

									<li><span>128523</span><em class="list_icon top jrsj_plus" bookid="510426" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>17417</span><em class="list_icon top jrsj_plus" bookid="737385" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>6292</span><em class="list_icon top jrsj_plus" bookid="742723" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>3648</span><em class="list_icon jrsj_plus" bookid="691985" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>567</span><em class="list_icon jrsj_plus" bookid="747843" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>119</span><em class="list_icon jrsj_plus" bookid="683061" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>76</span><em class="list_icon jrsj_plus" bookid="490607" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>43</span><em class="list_icon jrsj_plus" bookid="69507" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li><span>36</span><em class="list_icon jrsj_plus" bookid="710169" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

									<li class="last"><span>32</span><em class="list_icon jrsj_plus" bookid="696986" order="10" title="加入书架">10</em>
										<<a href="GetBookInfoController?bookName=乱世枭雄" target="_blank">乱世枭雄</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c6/c0/b9/u12/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" tabid="2">
								<ul>

									<li><span>281111</span><em class="list_icon top jrsj_plus li_sec" bookid="510426" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>76743</span><em class="list_icon top jrsj_plus li_sec" bookid="737385" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>15036</span><em class="list_icon top jrsj_plus li_sec" bookid="691985" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>12056</span><em class="list_icon jrsj_plus li_sec" bookid="742723" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>7216</span><em class="list_icon jrsj_plus" bookid="683061" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>7142</span><em class="list_icon jrsj_plus" bookid="747843" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>5603</span><em class="list_icon jrsj_plus" bookid="69507" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>4313</span><em class="list_icon jrsj_plus" bookid="490607" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li><span>2233</span><em class="list_icon jrsj_plus" bookid="612328" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

									<li class="last"><span>1840</span><em class="list_icon jrsj_plus" bookid="44202" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=朝天阙" target="_blank">朝天阙</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c6/c0/b9/u9/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="3">
								<ul>

									<li><span>3010989</span><em class="list_icon top jrsj_plus" bookid="510426" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>805184</span><em class="list_icon top jrsj_plus" bookid="737385" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>171480</span><em class="list_icon top jrsj_plus" bookid="691985" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>127357</span><em class="list_icon jrsj_plus" bookid="683061" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>98177</span><em class="list_icon jrsj_plus" bookid="742723" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>75749</span><em class="list_icon jrsj_plus" bookid="490607" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>71723</span><em class="list_icon jrsj_plus" bookid="69507" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>40789</span><em class="list_icon jrsj_plus" bookid="612328" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li><span>34593</span><em class="list_icon jrsj_plus" bookid="521106" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

									<li class="last"><span>31556</span><em class="list_icon jrsj_plus" bookid="44202" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=大明春色" target="_blank">大明春色</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c6/c0/b9/u6/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>

						</div>
						<div class="cl10"></div>
						<div class="box ph_list mar_left10 tabcontainer">
							<!-- 都市·娱乐 分类点击榜 -->

							<!-- 分类点击榜 -->
							<div class="head">
								<span class="date fr">
        <em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
        <em class="tabtitle current" tabid="2">周<b class="triangle_down"></b></em>
        <em class="tabtitle" tabid="3">月<b class="triangle_down"></b></em>
    </span>
								<span>都市娱乐点击榜</span>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="1">
								<ul>

									<li><span>207843</span><em class="list_icon top jrsj_plus" bookid="730066" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>200949</span><em class="list_icon top jrsj_plus" bookid="665301" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>182593</span><em class="list_icon top jrsj_plus" bookid="603738" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>175583</span><em class="list_icon jrsj_plus" bookid="512263" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>172749</span><em class="list_icon jrsj_plus" bookid="635570" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>172395</span><em class="list_icon jrsj_plus" bookid="632434" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>71753</span><em class="list_icon jrsj_plus" bookid="714691" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>17705</span><em class="list_icon jrsj_plus" bookid="732001" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li><span>9465</span><em class="list_icon jrsj_plus" bookid="745297" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

									<li class="last"><span>9365</span><em class="list_icon jrsj_plus" bookid="745795" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=医等狂兵" target="_blank">医等狂兵</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c9/c0/b9/u12/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" tabid="2">
								<ul>

									<li><span>824677</span><em class="list_icon top jrsj_plus" bookid="730066" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>723359</span><em class="list_icon top jrsj_plus li_sec" bookid="603738" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>690979</span><em class="list_icon top jrsj_plus li_sec" bookid="512263" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>631823</span><em class="list_icon jrsj_plus li_sec" bookid="632434" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>630063</span><em class="list_icon jrsj_plus li_sec" bookid="635570" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>428094</span><em class="list_icon jrsj_plus li_sec" bookid="665301" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>155799</span><em class="list_icon jrsj_plus li_sec" bookid="714691" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>141081</span><em class="list_icon jrsj_plus li_sec" bookid="411993" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li><span>125712</span><em class="list_icon jrsj_plus li_sec" bookid="732001" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

									<li class="last"><span>30992</span><em class="list_icon jrsj_plus" bookid="745795" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=超品战兵" target="_blank">超品战兵</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c9/c0/b9/u9/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="3">
								<ul>

									<li><span>11840083</span><em class="list_icon top jrsj_plus" bookid="730066" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>10443313</span><em class="list_icon top jrsj_plus" bookid="603738" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>10360269</span><em class="list_icon top jrsj_plus" bookid="512263" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>8939667</span><em class="list_icon jrsj_plus" bookid="632434" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>8359115</span><em class="list_icon jrsj_plus" bookid="732001" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>8212467</span><em class="list_icon jrsj_plus" bookid="635570" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>4421377</span><em class="list_icon jrsj_plus" bookid="665301" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>2477133</span><em class="list_icon jrsj_plus" bookid="411993" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li><span>1744497</span><em class="list_icon jrsj_plus" bookid="714691" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

									<li class="last"><span>426023</span><em class="list_icon jrsj_plus" bookid="490372" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=最强逆袭" target="_blank">最强逆袭</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c9/c0/b9/u6/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>

						</div>
						<div class="box ph_list mar_left10 tabcontainer">
							<!-- 竞技·同人 分类点击榜 -->

							<!-- 分类点击榜 -->
							<div class="head">
								<span class="date fr">
        <em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
        <em class="tabtitle current" tabid="2">周<b class="triangle_down"></b></em>
        <em class="tabtitle" tabid="3">月<b class="triangle_down"></b></em>
    </span>
								<span>竞技同人点击榜</span>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="1">
								<ul>

									<li><span>10</span><em class="list_icon top jrsj_plus" bookid="732198" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>5</span><em class="list_icon top jrsj_plus" bookid="747287" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>5</span><em class="list_icon top jrsj_plus" bookid="157948" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>4</span><em class="list_icon jrsj_plus" bookid="727807" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>3</span><em class="list_icon jrsj_plus" bookid="745505" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>3</span><em class="list_icon jrsj_plus" bookid="746629" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>2</span><em class="list_icon jrsj_plus" bookid="742299" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>2</span><em class="list_icon jrsj_plus" bookid="184224" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li><span>2</span><em class="list_icon jrsj_plus" bookid="356498" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

									<li class="last"><span>2</span><em class="list_icon jrsj_plus" bookid="749563" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=绿茵风暴" target="_blank">绿茵风暴</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c21/c0/b9/u12/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" tabid="2">
								<ul>

									<li><span>469</span><em class="list_icon top jrsj_plus" bookid="157948" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>320</span><em class="list_icon top jrsj_plus" bookid="529708" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>230</span><em class="list_icon top jrsj_plus" bookid="105574" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>209</span><em class="list_icon jrsj_plus" bookid="99953" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>202</span><em class="list_icon jrsj_plus" bookid="150471" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>189</span><em class="list_icon jrsj_plus" bookid="195804" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>188</span><em class="list_icon jrsj_plus" bookid="298567" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>160</span><em class="list_icon jrsj_plus" bookid="172528" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li><span>151</span><em class="list_icon jrsj_plus" bookid="646409" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

									<li class="last"><span>141</span><em class="list_icon jrsj_plus" bookid="366302" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=重生之火影世界" target="_blank">重生之火影世界</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c21/c0/b9/u9/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="3">
								<ul>

									<li><span>9552</span><em class="list_icon top jrsj_plus" bookid="157948" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>6147</span><em class="list_icon top jrsj_plus" bookid="529708" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>4204</span><em class="list_icon top jrsj_plus" bookid="195804" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>4128</span><em class="list_icon jrsj_plus" bookid="105574" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>4034</span><em class="list_icon jrsj_plus" bookid="298567" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>3505</span><em class="list_icon jrsj_plus" bookid="150471" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>3121</span><em class="list_icon jrsj_plus" bookid="99953" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>3081</span><em class="list_icon jrsj_plus" bookid="172528" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li><span>2341</span><em class="list_icon jrsj_plus" bookid="193114" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

									<li class="last"><span>2322</span><em class="list_icon jrsj_plus" bookid="646409" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=诛仙逍遥" target="_blank">诛仙逍遥</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c21/c0/b9/u6/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>

						</div>
						<div class="box ph_list tabcontainer mar_left10">
							<!-- 科幻·游戏 分类点击榜 -->

							<!-- 分类点击榜 -->
							<div class="head">
								<span class="date fr">
        <em class="tabtitle" tabid="1">日<b class="triangle_down"></b></em>
        <em class="tabtitle current" tabid="2">周<b class="triangle_down"></b></em>
        <em class="tabtitle" tabid="3">月<b class="triangle_down"></b></em>
    </span>
								<span>科幻游戏点击榜</span>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="1">
								<ul>

									<li><span>5774</span><em class="list_icon top jrsj_plus" bookid="729221" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>447</span><em class="list_icon top jrsj_plus" bookid="305236" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>88</span><em class="list_icon top jrsj_plus" bookid="747413" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>78</span><em class="list_icon jrsj_plus" bookid="325639" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>71</span><em class="list_icon jrsj_plus" bookid="666143" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>64</span><em class="list_icon jrsj_plus" bookid="744178" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>33</span><em class="list_icon jrsj_plus" bookid="702610" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>29</span><em class="list_icon jrsj_plus" bookid="673218" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li><span>22</span><em class="list_icon jrsj_plus" bookid="749194" order="9" title="加入书架">9</em>
									<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

									<li class="last"><span>18</span><em class="list_icon jrsj_plus" bookid="718689" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=网游之梦幻法师" target="_blank">网游之梦幻法师</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c15/c0/b9/u12/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" tabid="2">
								<ul>

									<li><span>13410</span><em class="list_icon top jrsj_plus" bookid="729221" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>3741</span><em class="list_icon top jrsj_plus" bookid="666143" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>2729</span><em class="list_icon top jrsj_plus" bookid="325639" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>2219</span><em class="list_icon jrsj_plus" bookid="89994" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>1708</span><em class="list_icon jrsj_plus" bookid="660107" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>1524</span><em class="list_icon jrsj_plus" bookid="718689" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>1463</span><em class="list_icon jrsj_plus" bookid="56579" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>1249</span><em class="list_icon jrsj_plus" bookid="621400" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li><span>1185</span><em class="list_icon jrsj_plus" bookid="305236" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

									<li class="last"><span>1172</span><em class="list_icon jrsj_plus" bookid="111285" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=无穷重阻" target="_blank">无穷重阻</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c15/c0/b9/u9/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>
							<div class="book_list tabpanel" style="display: none;" tabid="3">
								<ul>

									<li><span>164059</span><em class="list_icon top jrsj_plus" bookid="729221" order="1" title="加入书架">1</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>56265</span><em class="list_icon top jrsj_plus" bookid="666143" order="2" title="加入书架">2</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>43663</span><em class="list_icon top jrsj_plus" bookid="325639" order="3" title="加入书架">3</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>39655</span><em class="list_icon jrsj_plus" bookid="89994" order="4" title="加入书架">4</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>30425</span><em class="list_icon jrsj_plus" bookid="660107" order="5" title="加入书架">5</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>28685</span><em class="list_icon jrsj_plus" bookid="718689" order="6" title="加入书架">6</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>27513</span><em class="list_icon jrsj_plus" bookid="230648" order="7" title="加入书架">7</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>26170</span><em class="list_icon jrsj_plus" bookid="56579" order="8" title="加入书架">8</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li><span>24192</span><em class="list_icon jrsj_plus" bookid="413680" order="9" title="加入书架">9</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

									<li class="last"><span>19905</span><em class="list_icon jrsj_plus" bookid="621851" order="10" title="加入书架">10</em>
										<a href="GetBookInfoController?bookName=星辰之主" target="_blank">星辰之主</a>
									</li>

								</ul>
								<div class="more">
									<a href="http://book.zongheng.com/store/c15/c0/b9/u6/p1/v9/s9/t0/ALL.html" target="_blank">查看更多&gt;&gt;</a>
								</div>
							</div>

						</div>
					<div class="cl10"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="view/js/ranking.js"></script>
	</body>
</html>