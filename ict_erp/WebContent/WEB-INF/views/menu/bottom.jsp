<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String rPath = request.getContextPath();
String title = "클라우드 프로젝트";
String uri = request.getRequestURI();
%>
<script>
    $('#menu-toggle').click(function(e) {
        e.preventDefault();
        $('#wrapper').toggleClass('toggled');
    });
    $(document).ready(function(){
    	var uri = '<%=uri%>';
    	uri = uri.replace('/WEB-INF/views','');
    	uri = uri.replace('.jsp','');
    	var navs = document.querySelectorAll('.sidebar-nav li');
    	for(var i=0;i<navs.length;i++){
    		navs[i].classList.remove('active');
    	}
    	var nav = document.querySelector('.sidebar-nav li a[href="' + uri +'"]');
    	nav.parentNode.classList.add('active');
        $('#wrapper').toggleClass('toggled');
    })
</script>
</body>
</html>