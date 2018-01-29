<%@page import="admayee.springmvc.form.User"%>
<%@page import="admayee.springmvc.util.GameCounter"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 


<% String topBuzzer = GameCounter.topBuzzer;
User param = (User)request.getAttribute("user");
String currentUser = param.getUserName() ;
String firsttime = (String)request.getAttribute("firsttime");
%>
 
<html>
<script type="text/javascript">
    function clearBuzzer(act) {
    	//alert(act);
    	document.forms['frmMain'].action = act;
    	document.forms['frmMain'].submit();
    }
    
    function blinker() {
    	$('.blinking').fadeOut(500);
    	$('.blinking').fadeIn(500);
    }
    setInterval(blinker, 1000);
</script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NEKK Aksharamale</title>
<style>
.page {
  float: left;
  margin: 5px;
  padding: 5px;
  width: 70px;
  height: 300px;
  border: 1px solid black;
  border-style: solid;
} 

.page1 {
	float:none;
   top:0;
   vertical-align:top;
}
body.dialog #menus
  {display:none;}
body.dialog #entmenus
  {display:none;}  
body.dialog #page
  {}
  
  body#config #tabs .notab
  {text-align:left;}
  h1 {
    font-size: 80px;
}

h2 {
    font-size: 50px;
}

form {
    font-size: 50px;
}
input[type="text"]
{
    font-size:40px;
}
input[type="button"]
{
    font-size:24px;
}
</style>
    </head>
    <body id="page1" class="dialog noTab">
<div id="page"  align="center">
<h1 class="blinking">
<% if(!("".equals(topBuzzer))) {%>
Team <strong><%= topBuzzer%> </strong> buzzed first.
<%} else{%>
Ready for next?
<%}%>
</h1>
<p>
            <div id="content">
<form id="frmMain" action="#" action="@{/account}" object="${user}" method="post">
    	<p>Team Name: <input type="text" name="userName" value="${user.userName}" readonly/></p>
        
		
		<a href="#" onclick="clearBuzzer('/account');"><img style="width: 300px; height: auto; " src="<%=request.getContextPath() %>/images/on.jpg"></a>
		<% if("firsttime".equals(firsttime)) {%>
		<%} else if(topBuzzer.equals(currentUser)) {%>
		<audio autoplay>
  			<source src="<%=request.getContextPath() %>/audio/first.mp3" type="audio/mpeg">
		</audio>
			<a><img style="width: 300px; height: auto; " src="<%=request.getContextPath() %>/images/first.jpg"></a>
		<%} else {%>
			<a><img style="width: 300px; height: auto; " src="<%=request.getContextPath() %>/images/late.png"></a>
		<%}%>
		<p>
		<!-- <h2><a href="#" onclick=" clearBuzzer('/account/accountClr');">Clear Result</a></h2>  -->
		<p><p>
		<a href="#" onclick=" clearBuzzer('/enter/exit');" >Exit</a>
</form>
            </div>
            <div id="footer">

            </div>
        </div>
		


    </body>
</html>