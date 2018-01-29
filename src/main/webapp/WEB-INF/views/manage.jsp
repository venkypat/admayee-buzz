<%@page import="java.util.ArrayList"%>
<%@page import="admayee.springmvc.form.User"%>
<%@page import="admayee.springmvc.util.GameCounter"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 


<% String topBuzzer = GameCounter.topBuzzer;
ArrayList<String> teams = GameCounter.teams;
%>
 
<html>
<script type="text/javascript">
   
    function teamFrmSubmit(act) {
    	var x = document.forms["teamFrm"]["userName"].value;
		if (x == "") {
			alert("Team Name must be filled");
		}else{
			document.forms['teamFrm'].action = act;
			document.forms['teamFrm'].submit();
		}
    }
    
    function frmMainSubmit(act) {
    	document.forms['frmMain'].action = act;
		document.forms['frmMain'].submit();
		
    }
    function teamDelFrmSubmit(act, team) {
    	document.forms['teamDelFrm'].action = act;
    	document.forms['teamDelFrm']["userName"].value = team;
		document.forms['teamDelFrm'].submit();
		
    }
    
</script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<style>
.page {
  float: left;
  margin: 5px;
  padding: 5px;
  width: 70px;
  height: 300px;
  border: 1px solid black;
  border-style: solid;
  background-color: lightblue;
} 

.page1 {
	float:none;
   top:0;
   vertical-align:top;
   background-color: lightblue;
}

body {
    background-color: black;
	color: white;
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
    font-size: 50px;
}

h2 {
    font-size: 30px;
	color: cyan;
}

h3 {
    font-size: 20px;
	color: lightblue;
}

h4 {
    font-size: 40px;
    color: purple;
    -webkit-animation-name: example; /* Safari 4.0 - 8.0 */
    -webkit-animation-duration: 4s; /* Safari 4.0 - 8.0 */
    animation-name: example;
    animation-duration: 4s;
}
h5 {
    font-size: 20px;
	color: red;
}
/* Safari 4.0 - 8.0 */
@-webkit-keyframes example {
    0%   {background-color: red;}
    25%  {background-color: yellow;}
    50%  {background-color: blue;}
    100% {background-color: green;}
}

/* Standard syntax */
@keyframes example {
    0%   {background-color: red;}
    25%  {background-color: yellow;}
    50%  {background-color: blue;}
    100% {background-color: green;}
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
<header align="center">
    <img src="<%=request.getContextPath() %>/images/banner1.jpg" style="max-width: 80%; height: auto;"/> 
</header>
<div id="page"  align="center">
<!--<h1>Welcome to NEKK Aksharamale.</h1> -->
<h5>
<% if(!("".equals(topBuzzer))) {
	if (!GameCounter.buzzed){%>
<audio autoplay>
  			<source src="<%=request.getContextPath() %>/audio/first.mp3" type="audio/mpeg">
		</audio>
		
	<%GameCounter.buzzed = true;}
	
	}else {
		GameCounter.buzzed = false;%>		

<%}%>
</h5>
<p>
        <div id="content">
        <h3>-------------TEAMs--------------</h3>
        
        <form id="teamDelFrm" action="#" action="@{/remove}"  object="${user}" method="post">
        <input type="hidden" name="userName" />		
        <p><p>
		<% if(teams.size()>0) {for(String team:teams){ %>
		 	
			<h2><a href="#" onclick="teamDelFrmSubmit('/remove','<%=team %>');" ><%=team %></a> </h2>
		<% } }  %>
		</form>
			

		<p><p>
		<form id="frmMain" action="#" action="@{/manage}"  method="get">
		<a href="#" onclick="frmMainSubmit('/admin');" ><h3>Start Game</h3></a>
		</form>
		<form id="teamFrm" action="#" action="@{/manage}" object="${user}" method="post">
			<div id="content">
			<p>Team Name: <input type="text" name="userName" /></p>
			        <input type="button" onclick="teamFrmSubmit('/manage/add');" value="Add !!"/>
			</div>			    	
		</form>
            </div>
            <div id="footer">

            </div>
        </div>
		


    </body>
</html>