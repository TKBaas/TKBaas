<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html><!-- 商家管理平台的首页 -->
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>店铺主页|详细信息</title>
	<link rel="stylesheet" href="/TKBaas/css/font-awesome.min.css">
<style type="text/css">
	body,ul,ol,li,p,h1,h2,h3,h4,h5,h6,form,fieldset,table,td,img,div,dl,dt,dd,input{margin:0;padding: 0;border: 0;}
	body{font-size: 14px;overflow-x: hidden;min-width: 1197px;font-family: "Helvetica Neue", Helvetica, Microsoft Yahei, Hiragino Sans GB, WenQuanYi Micro Hei, sans-serif;}
	img{border:none;}
	ul,li{
		list-style: none;
	}
	a{
		text-decoration:none;
		color: #fff; 
	}
	/*头部*/
	.manage-header{
		width: 100%;
		height: 64px;
		line-height: 64px;
		background: #2a3b4c;
	}
	.header-container{
		width: 1200px;
		margin: 0 auto;
		display: flex;
		flex-flow: row nowrap;
		justify-content: space-between;
	}
	.logo{
		display: flex;
		flex-flow: row nowrap;
	}
	.header-container .logo img{
		width: 175px;
		height: 64px;
		margin-right: 30px;
	}
	.header-container .logo p{
		font-size: 30px;
		color: #fff;
	}
	.header-container .signIn ul{
		width: 120px;
		display: flex;
		flex-flow: row nowrap;
		justify-content: space-between;
		align-items: center;

	}

	/*内容部分*/
	.manage-content{
		width: 1200px;
		margin:0 auto;
		padding-top: 40px;
		display: flex;
		flex-flow: row;
		justify-content: space-between;
	}


	.leftBar>div>ul>li>p{
		width: 196px;
		height: 40px;
		box-sizing: border-box;
		padding-left: 10px;
		background: #f2f2f2;
		border-radius: 4px;
		line-height: 40px;
		color: #4a515b;
		border: 1px solid #d5d5d5;
		cursor: pointer;
	}
	.leftBar>div>ul>li>ul{
		overflow: hidden;
		
	}
	.leftBar>div>ul>li>ul>li{
		width: 196px;
		height: 38px;
		line-height: 38px;
		border-radius: 4px;
		text-align: center;
	}
	.leftBar>div>ul>li>ul>li:hover{
		background: #6f7782;
		
	}
	.leftBar>div>ul>li>ul>li:hover>a{
		color: #fff;
	}
	.leftBar>div>ul>li>ul>li>a{
		color: #4a515b;
	}
	.leftBar>div>ul>li>ul>li>a>i{
		padding-right: 4px;
	}
	.leftBar>div>ul>li>p>i:nth-child(1){
		padding-right: 8px;
	}
	.leftBar>div>ul>li>p:hover, .p_active{
		background: #464c56 !important;
		color: #fff !important;
	}

	.change_height{
		height: 0 !important;
		transition: 1s all ease-in-out;
	}
	.caret{
		margin-left: 80px;
		font-size: 20px;
	}

	
	.manage-content .rightContent{
		width: 80%;
		background: #f2f2f2;
		border-radius: 6px;
		overflow: hidden;
	}

	.bread-nav{
		width: 100%;
		height: 50px;
		background: #488c6c;
		font-size: 30px;
		line-height: 50px;
		padding-left: 40px;
		color: #fff;
		margin-bottom: 20px;
	}



	.recent_order,.recent_hot{
		width: 94%;
		margin: 0 auto;
		background: #fff;
		margin-bottom: 20px;
		padding:20px;
		box-sizing: border-box;
	}
	.recent_order table{
		margin-top: 20px;
		border-width: 1px;
		border-color: #666666;
		border-collapse: collapse;
	}
	.recent_order table td,.recent_order table th{
		border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
	}
	
	.recent_hot>div{
		width: 95%;
		margin: 0 auto;
		padding: 10px;
		display: flex;
		flex-flow: row wrap;
		justify-content: space-between;
	}
	
	.recent_hot>div>div{
		width: 30%;
		height: 300px;
		background: #ccc;
		border-radius: 8px;
		margin-bottom: 10px;
	}

	.detail-info{
		width: 94%;
		margin: 40px auto 40px;
		background: #fff;
		border-radius: 6px;
		padding: 20px;
		box-sizing: border-box;
	}
	.detail-info>.items{
		margin-bottom: 30px;
		font-size: 16px;
	}
	.detail-info>.items>span{
		display: inline-block;
		width: 100px;
		text-align: right;
		vertical-align: top;
		margin-right: 20px;
	}
	.detail-info>.items>span>em{
		color: red;
		padding-right: 4px;
	}

	.detail-info>.items>.dee{
		display: inline-block;
		width: 600px;
	}
	.detail-info>.items>strong,.detail-info>.items>label{
		margin-right: 8px;
	}

	.btn-change{
		widows: 100px;
		height: 40px;
		border: none;
		outline: none;
		background: #488c6c;
		color: #fff;
		padding:10px 20px;
		border-radius: 6px;	
		font-size: 18px;

		margin: 20px 0 20px 200px;
	}
</style>
</head>
<body>
	<header class="manage-header" >
		<div class="header-container">
			<div class="logo">
				<img src="/TKBaas/images/logo.png" alt="logo" title="logo">
				<p>后台管理系统</p>
			</div>
			<div class="signIn">
				<ul>
					<li><a href="/TKBaas/seller/pc/home">${seller.shopName}</a></li>
					<li><a href="/TKBaas/seller/pc/exit">退出</a></li>
				</ul>
			</div>
		</div>	
	</header>
	<section class="manage-content">
		<div class="leftBar">
			<div>
				<ul>
					<li>
						<p class="ul-control p_active"><i class="fa fa-home"></i>店铺信息<i class="fa fa-caret-down caret"></i></p>
						<ul class="change_height">
							<li class="li_active"><a href="/TKBaas/seller/pc/home"><i class="fa fa-server"></i>店铺信息</a></li>
							<!-- <li><a href=""><i class="fa fa-bar-chart"></i>历史订单</a></li>
							<li><a href=""><i class="fa fa-th"></i>评价管理</a></li> -->
						</ul>
					</li>
					<!-- <li>
						<p  class="ul-control"><i class="fa fa-envelope"></i>订单管理<i class="fa fa-caret-down caret"></i></p>
						<ul class="change_height">
							<li><a href=""><i class="fa fa-user"></i>详细信息</a></li>
							<li><a href=""><i class="fa fa-newspaper-o"></i>我的钱包</a></li>
						</ul>
					</li> -->
					<li>
						<p  class="ul-control"><i class="fa fa-shopping-cart"></i>订单管理<i class="fa fa-caret-down caret"></i></p>
						<ul class="change_height">
							<li><a href=""><i class="fa fa-server"></i>订单列表</a></li>
							<!-- <li><a href=""><i class="fa fa-bar-chart"></i>历史订单</a></li>
							<li><a href=""><i class="fa fa-th"></i>评价管理</a></li> -->
						</ul>
					</li>
					<li>
						<p  class="ul-control"><i class="fa fa-th-large"></i>商品管理<i class="fa fa-caret-down caret"></i></p>
						<ul class="change_height">
							<li><a href="/TKBaas/product/pc/addProductForm"><i class="fa fa-columns"></i>发布商品</a></li>
							<li><a href=""><i class="fa fa-star-half-o"></i>出售中商品</a></li>
						</ul>
					</li>
					
				</ul>
			</div>
		</div>
		<div class="rightContent">
			<div class="bread-nav">
				店铺详细信息
			</div>
			<div class="detail-info">
				<div class="items">
					<span><em>*</em>店铺图片:</span><img alt="店铺图片" src="/TKBaas/imgs/${seller.shopPicture}" style="width:200;height:100px;border: 2px solid gray;">
				</div>
				<div class="items">
					<span><em>*</em>店铺名:</span><strong>${seller.shopName }</strong>
				</div>
				<div class="items">
					<span><em>*</em>店铺描述:</span>
					<p class="dee">${seller.shopDescription}</p>
				</div>
				<div class="items">
					<span><em>*</em>店铺等级:</span>
					<c:choose>
						<c:when test="${product.seller.grade == 5}">
						<img src="/TKBaas/images/commit-level/level5.png">
						</c:when>
						<c:when test="${product.seller['grade'] == 2}">
						<img src="/TKBaas/images/commit-level/level2.png">
						</c:when>
						<c:when test="${product.seller['grade'] == 3}">
						<img src="/TKBaas/images/commit-level/level3.png">
						</c:when>
						<c:when test="${product.seller['grade'] == 4}">
						<img src="/TKBaas/images/commit-level/level4.png">
						</c:when>
						<c:otherwise>
						<img src="/TKBaas/images/commit-level/level1.png">
						</c:otherwise>
					</c:choose>
				</div>
				<div class="items">
					<span><em>*</em>手机号码:</span><strong>${seller.phone}</strong>
				</div>
				
				<div class="items">
					<span><em>*</em>真实姓名:</span><strong>${seller.name}</strong>
				</div>
				<div class="items">
					<span><em>*</em>身份证号：</span><strong>${seller.chinaID }</strong>
				</div>
				<div class="items">
					<span><em>*</em>店铺金额：</span><strong>￥ ${seller.shopMoney}</strong>
				</div>
				<button class="btn-change">修改</button>
			</div>
		</div>


	</section>


	<script type="text/javascript" src="/TKBaas/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$('.ul-control').click(function(){
				$(this).next().toggleClass('change_height');
			});
		});
	</script>
</body>
</html>