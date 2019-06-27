<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>


<html>
	<head>
		<meta charset="utf-8">
		<title>MordenX小说网站</title>
		<link rel="stylesheet" type="text/css" href="view/css/base.css">
		<link rel="stylesheet" type="text/css" href="view/css/page.css">
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
				
				<div class="top_middle">
				<c:forEach items="${bookInfo }" var="l"  begin="0" end="0" step="1">
					<div class="left_img">
						<img src="view/img/${l.bookImage}">
					</div>
					<div class="word">
						<p class="title_word">${l.bookName }</p>
						<div class="information">
							<ul>
								<li class="inli lileft">作者:</li>
								<li class="inli wordleft">${l.bookWriter }</li>
								<li class="inli lileft" >分类:</li>
								<li class="inli wordleft">${l.bookType }</li>
							</ul>
						</div>
						<div class="introduct">
							<p class="introduct-word"style="font-size:30px;">简介</p>
							<p class="introduct-word">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${l.bookPath}</p> 
						</div>
						</c:forEach>
							<div class="book_btn">
					            <a id="readRecord" href="javascript:void(0)" class="btn_sr">开始阅读</a>
					            <span class="btn_as favorite">
					            	<a href="javascript:void(0)"><em></em>收藏</a>
					            </span>
								<span class="btn_as list">
									<a href="javascript:void(0)"  class="btn_dl" target="_blank"><em></em>目录</a>
								</span>
							</div>
					</div>
					
				<div class="middle">
					<h1>章节目录</h1>
					<div class="BookList">
					<div class="volume">
                    	<div class="cover"></div>
                    
                    	<h3>
                        
                        <a class="subscri" href="javascript:void(0)" ><em class="btn"><b class="iconfont"></b>分卷阅读</em></a>
                        
                        	<c:forEach items="${bookInfo }" var="l">${l.bookName }</c:forEach><i>·</i>共62章<span class="free"> 免费</span><em class="count">本卷共<cite>223625</cite>字</em></h3>
                    	<ul class="cf">
	                       <c:forEach var="i" begin="1" end="62" step="1">   
	                        <li data-rid="1"><a href="javascript:void(0)" >第${i}章</a>
	                        </li>
                            </c:forEach>
                    </ul>
                </div>
		</div>
		</div>
	</body>
</html>
