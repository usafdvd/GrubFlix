
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html class="full" lang="en">


<%@ include file="includes-base/ihead.jsp" %>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
 
<script>
	$(function() {
		$(".meter > span").each(function() {
			$(this).data("origWidth", $(this).width()).width(0).animate({
				width : $(this).data("origWidth")
			}, 1200);
		});
	});
</script>


<%@ include file="includes-base/inav-default.jsp" %>

<div class="container-fluid movieWrapper">
	  <div class="maxWidthWrapper">
 	  	

 	  	
 	  	<%@ include file="includes/itracking.jsp" %>
 	  	
 	  	
	</div>
</div>
  



   <%@ include file="includes-base/iscripts.jsp" %>
    
</body>

</html>
