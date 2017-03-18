<%--
    Document   : MallShopingHome
    Created on : Dec 19, 2016, 15:38:35 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style-sheet.css" type="text/css"/>
         <link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>

        <title>JSP Page</title>

    </head>
    <%
                String msg = null;
                msg = (String) session.getAttribute("MSG");
    %>
    <body>
        <table width="80%" align="center"  bgcolor="white" bgcolor="white">
            <tr>
                <td colspan="2" height="40px;">
                    <%@include file="header_menu.html" %>
                </td>
            </tr>
            
       
                 <tr>

                <td style="color:#e43737">
                 <marquee direction="left"><h2>Thank You For Visiting Out Website!!!!</h2></marquee>
                </td>
            </tr>
               <tr>

                <td style="color:#e43737">
                    <h3><a href="MallShopingHome.jsp">Login Here!!!!</a></h3>
                </td>
            </tr>
        
           
            <tr>
                <td height="50" colspan="2" align="center" class="toplinls" width="100%">
                    <span class="whitefont">Online Shopping</span>
                </td>
            </tr>
        </table>
    </body>
</html>
