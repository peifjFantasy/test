<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
	function checkData(){
		var q=$("#q").val().trim();
		if(q == null || q==""){
			$.messager.alert("请输入您要查询的关键字！");
			return false;
		}
		return true;
	}
</script>
<div class="row">
	<div class="col-md-12" style="padding-top: 10px">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html"><font color="black"><strong>首页</strong></font></a>
		    </div>

		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
		      <ul class="nav navbar-nav">
		        <li><a href="${pageContext.request.contextPath}/blogger/aboutMe.html"><font color="black"><strong>关于博主</strong></font></a></li>
		        <li><a href="${pageContext.request.contextPath}/login.jsp"><font color="black"><strong>登录后台</strong></font></a></li>
		      </ul>
		      <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/blog/searchBlog.html" method="post" onsubmit="return checkData()">
		        <div class="form-group" >
		          <input type="text" id="q" name="q" class="form-control" placeholder="请输入要查询的关键字...">
		        </div>
		        <button type="submit" class="btn btn-default">搜索</button>
		      </form>
		    </div>
		  </div>
		</nav>
	</div>
</div>