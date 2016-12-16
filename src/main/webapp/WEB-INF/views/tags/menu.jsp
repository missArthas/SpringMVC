<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<script type="text/javascript">
	$(document).ready(function () {
		$('.inactives').click(function () {
			if ($(this).siblings('ul').css('display') == 'none') {
				$(this).parent('li').siblings('li').removeClass('inactives');
				$(this).addClass('inactives');
				$(this).siblings('ul').slideDown(100).children('li');
				if ($(this).parents('li').siblings('li').children('ul').css('display') == 'block') {
					$(this).parents('li').siblings('li').children('ul').parent('li').children('a').removeClass('inactives');
					$(this).parents('li').siblings('li').children('ul').slideUp(100);

				}
			} else {
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
		<img src="<c:url value='/resources/img/sunny.png' />" alt="me" class="online" /> <span>:
				<sec:authentication property="principal.username" />
		</span>
	</a>
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
				<li><a href="#" class="inactives active">维表管理</a>
					<ul style="display: none">
						<%--<li><a href=<c:url value='/demo/management'/>>SOA请求列表</a></li>--%>
						<li><a href="<c:url value="/metadata/soaparam"/>">SOA请求列表</a></li>
						<li><a href="<c:url value="/metadata/bu"/>">bu维表管理</a></li>
						<li><a href="<c:url value="/metadata/constraint"/>">约束条件管理</a></li>
						<li><a href="<c:url value="/metadata/strategy"/>">策略维表管理</a></li>
						<li><a href="<c:url value="/metadata/strategy/configitem"/>">策略可配置项管理</a></li>
						<li><a href="<c:url value="/metadata/contracttype"/>">契约参数类型维表</a></li>
						<li><a href="<c:url value="/metadata/contractparam"/>">契约可配置参数维表</a></li>
					</ul>
				</li>
				<li><a href="#" class="inactives active">推荐管理</a>
					<ul style="display:none">
						<li><a href="<c:url value="/admin/scene/status"/>">状态管理</a></li>
						<li><a href="<c:url value="/admin/scene/apollo"/>">apollo同步</a></li>
					</ul>
				</li>
				>
			</ul>
		</li>
	</ul>
</div>

<span class="minifyme" data-action="minifyMenu">
	<i class="fa fa-arrow-circle-left hit"></i>
</span>



