<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.ArrayList"%>
<%@page import="admayee.springmvc.util.GameCounter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<% 
ArrayList<String> teams = GameCounter.teams;
%>

<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Game Buzzer</title>
    </head>
    <body  id="page1" class="dialog noTab">

<form id="teamFrm" action="#" action="@{/account}" object="${user}" method="post">
<div id="page3" style="background-color:grey" align="center">
<h1>Welcome to NEKK Aksharamale.</h1>
<p>
<h2>
Click on your team to participate.</h2>
        <div id="content">
        <input type="hidden" name="userName" />	
            <p><p>
		<% if(teams.size()>0) {for(String team:teams){ %>
		<h2><a href="#" onclick="clearBuzzer('/enter','<%=team %>');" ><%=team %></a> </h2>
		 
		<%} } %>
		
<p>
<h2>All the Best</h2>
            
        </div>
    	
</form>
<script type="text/javascript">
    function clearBuzzer(act, team) {
    	document.forms['teamFrm'].action = act;
    	document.forms['teamFrm']["userName"].value = team;
		document.forms['teamFrm'].submit();
    }
</script>
    </body>
</html>