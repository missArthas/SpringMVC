<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<style type="text/css">
*{margin: 0;padding: 0}


.list{width: 210px;border-bottom:solid 1px #316a91;}
.list ul li{background-color:#467ca2; border:solid 1px #316a91; border-bottom:0;}
.list ul li a{padding-left: 10px;color: #fff; font-size:12px; display: block; font-weight:bold; height:36px;line-height: 36px;position: relative;
}
.list ul li .inactive{ background:url("<s:url value="/resources/img/menu/off.png" />") no-repeat 184px center;}
.list ul li .inactive{background:url("<s:url value="/resources/img/menu/on.png" />") no-repeat 184px center;}
.list ul li ul{display: block;}
.list ul li ul li { border-left:0; border-right:0; background-color:#6196bb; border-color:#467ca2;}
.list ul li ul li ul{display: block;}
.list ul li ul li a{ padding-left:20px;}

.list ul li ul li ul li { background-color:#d6e6f1; border-color:#6196bb; }//最浅色
.last{ background-color:#d6e6f1; border-color:#6196bb; }
.list ul li ul li ul li a{ color:#316a91; padding-left:30px;} //最深色
</style>
<script type="text/javascript">
$(document).ready(function() {
	$('.inactives').click(function(){
		if($(this).siblings('ul').css('display')=='none'){
			$(this).parent('li').siblings('li').removeClass('inactives');
			$(this).addClass('inactives');
			$(this).siblings('ul').slideDown(100).children('li');
			if($(this).parents('li').siblings('li').children('ul').css('display')=='block'){
				$(this).parents('li').siblings('li').children('ul').parent('li').children('a').removeClass('inactives');
				$(this).parents('li').siblings('li').children('ul').slideUp(100);

			}
		}else{
			//控制自身变成+号
			$(this).removeClass('inactives');
			//控制自身菜单下子菜单隐藏
			$(this).siblings('ul').slideUp(100);
			//控制自身子菜单变成+号
			$(this).siblings('ul').children('li').children('ul').parent('li').children('a').addClass('inactives');
			//控制自身菜单下子菜单隐藏
			$(this).siblings('ul').children('li').children('ul').slideUp(100);

			//控制同级菜单只保持一个是展开的（-号显示）
			$(this).siblings('ul').children('li').children('a').removeClass('inactives');
		}
	})
});
</script>
<!-- User info -->
<div class="login-info">

		<a href="javascript:void(0);" id="show-shortcut"
		data-action="toggleShortcut"> 
		<img src="<c:url value='/resources/img/avatars/sunny.png' />" alt="me" class="online" /> <span>:

				<sec:authentication property="principal.username" />
		</span>
	</a>

	</span>
</div>


<div class="list">
	<ul class="yiji">
		<li><a href="#" class="inactives">产品与服务</a>
			<ul style="display: block">
				<li><a href="#" class="inactives active">个性化推荐</a>
					<ul style="display: none">
						<li><a href=<c:url value='/recommend/my'/>>我的推荐</a></li>
						<li><a href=<c:url value='/recommend/api'/>>API测试</a></li>
						<li><a href=<c:url value='/recommend/report'/>>报表数据</a></li>
					</ul>
				</li>
				<li><a href="#" class="inactives active">精准化营销</a>
					<ul style="display: none">
						<li><a href=<c:url value='/market/my'/>>我的营销场景</a></li>
						<li><a href=<c:url value='/market/create'/>>新建营销场景</a></li>
					</ul>
				</li>
				<li><a href="#" class="inactives active">推荐营销DEMO</a>
					<ul style="display: none">
						<li><a href=<c:url value='/demo/userIntention'/>>用户意图</a></li>
						<li><a href=<c:url value='/demo/recommendField'/>>推荐栏位</a></li>
						<li><a href=<c:url value='/demo/marketScene'/>>营销场景</a></li>
						<li><a href=<c:url value='/demo/userBehavior'/>>用户行为</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="#" class="inactives">用户中心</a>
			<ul style="display: block">
				<li class="last"><a href="#">用户账号</a></li>
			</ul>
		</li>
	</ul>
</div>

<span class="minifyme" data-action="minifyMenu"> <i
	class="fa fa-arrow-circle-left hit"></i>
</span>

<!-- end user info -->

<!-- NAVIGATION : This navigation is also responsive-->
<!-- <nav>
	<ul>
	
		<li><a href="userIntention" title="用户意图" onclick="clickMenu()"><i
				class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">用户意图</span></a>
		</li>
 
		<li><a href="recommendField" title="推荐栏位" onclick="clickMenu()"><i
				class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">推荐栏位</span></a>
		</li>
		<li><a href="marketScene" title="营销场景" onclick="clickMenu()"><i
				class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">营销场景</span></a>
		</li>
		<li><a href="userBehavior" title="用户行为" onclick="clickMenu()"><i
				class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">用户行为</span></a>
		</li>
						
	</ul>
</nav> -->


