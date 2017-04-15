<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" href="../css/mui.min.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
		<h1 class="mui-title">GOODCAT</h1>
	</header>
	<div class="mui-content">
		<div class="mui-card">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell mui-collapse"><a
					class="mui-navigate-right" href="#">表单</a>
					<div class="mui-collapse-content">
						<form class="mui-input-group">
							<div class="mui-input-row">
								<label>Input</label> <input type="text" placeholder="普通输入框">
							</div>
							<div class="mui-input-row">
								<label>Input</label> <input type="text" class="mui-input-clear"
									placeholder="带清除按钮的输入框">
							</div>

							<div class="mui-input-row mui-plus-visible">
								<label>Input</label> <input type="text"
									class="mui-input-speech mui-input-clear" placeholder="语音输入">
							</div>
							<div class="mui-button-row">
								<button class="mui-btn mui-btn-primary" type="button"
									onclick="return false;">确认</button>
								&nbsp;&nbsp;
								<button class="mui-btn mui-btn-primary" type="button"
									onclick="mycloser()">取消</button>
							</div>
						</form>
					</div></li>
				<li class="mui-table-view-cell mui-collapse"><a
					class="mui-navigate-right" href="#">图片轮播</a>
					<div class="mui-collapse-content">
						<div id="slider" class="mui-slider">
							<div class="mui-slider-group mui-slider-loop">
								<!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
								<div class="mui-slider-item mui-slider-item-duplicate">
									<a href="#"> <img src="../img/yuantiao.jpg">
									</a>
								</div>
								<!-- 第一张 -->
								<div class="mui-slider-item">
									<a href="#"> <img src="../img/shuijiao.jpg">
									</a>
								</div>
								<!-- 第二张 -->
								<div class="mui-slider-item">
									<a href="#"> <img src="../img/muwu.jpg">
									</a>
								</div>
								<!-- 第三张 -->
								<div class="mui-slider-item">
									<a href="#"> <img src="../img/cbd.jpg">
									</a>
								</div>
								<!-- 第四张 -->
								<div class="mui-slider-item">
									<a href="#"> <img src="../img/yuantiao.jpg">
									</a>
								</div>
								<!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
								<div class="mui-slider-item mui-slider-item-duplicate">
									<a href="#"> <img src="../img/shuijiao.jpg">
									</a>
								</div>
							</div>
							<div class="mui-slider-indicator">
								<div class="mui-indicator mui-active"></div>
								<div class="mui-indicator"></div>
								<div class="mui-indicator"></div>
								<div class="mui-indicator"></div>
							</div>
						</div>
					</div></li>
				<li class="mui-table-view-cell mui-collapse"><a
					class="mui-navigate-right" href="#">文字排版</a>
					<div class="mui-collapse-content">
						<h1>h1. Heading</h1>
						<h2>h2. Heading</h2>
						<h3>h3. Heading</h3>
						<h4>h4. Heading</h4>
						<h5>h5. Heading</h5>
						<h6>h6. Heading</h6>
						<p>p. 目前最接近原生App效果的框架。</p>
					</div></li>
			</ul>
		</div>
	</div>

	<script src="../js/mui.min.js"></script>
	<script>
		mui.init({
			swipeBack : true
		//启用右滑关闭功能
		});
	</script>
	<script>
		function mycloser() {
			var url = "getCat";
			mui.ajax(url, {
				data : {
					storeid : "111114"
				},
				//dataType: 'json', //服务器返回json格式数据
				type : 'get', //HTTP请求类型
				timeout : 1000, //超时时间设置为10秒；
				success : function(data) {
					console.info(data);
				},
				error : function(xhr, type, errorThrown) {
					//异常处理；
					console.log(type);
				}
			});
		}
	</script>
</body>
</html>