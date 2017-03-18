<%-- 
    Document   : UserLogin
    Created on : DEC 21, 2016, 11:41:56 AM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/topmenu.css"/>
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css"/>
        <link type="text/css" rel="stylesheet" href="css/menu.css"/>
        <script type="text/javascript" src="js/javascript.js"></script>
        <title>User Login Page</title>
    </head>
    <%
                String msg = null;
                msg = (String) session.getAttribute("MSG");
    %>
    <body bgcolor="black">
        <table style="border-style: outset" width="80%" align="center"  bgcolor="white">
            <tr bgcolor="maroon" height="40px">
                <td>
                    <table width="100%">
                        <tr>
                            <td colspan="4"  align="center">
                                <img src="Image/mallHeader.png" alt="" height="150px" width="100%">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%@include file="Homeheader.html"%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="white">
                    <form method="post" action="userLogin">
                        <table cellpadding="3" cellspacing="3" align="center" width="50%">
                            <tr class="heading">
                                <td colspan="2" align="center">User Login</td>
                            </tr>
                            <tr>
                                <td valign="bottom" height="40px" id="label">
                                    Login Name :
                                </td>
                                <td valign="bottom" height="40px">
                                    <input type="text" name="txtname" id="txtname" size="33"/>
                                </td>
                            </tr>
                            <tr>
                                <td  valign="bottom" height="40px" id="label">
                                    Password :
                                </td>
                                <td valign="bottom" height="40px">
                                    <input type="password" name="txtpwd" id="txtpwd" size="33"/>
                                </td>
                            </tr>
                            <%
                                        if (msg != null) {
                            %>
                            <tr>
                                <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="2"><%=msg%></td>
                            </tr>
                            <%
                                            session.removeAttribute("MSG");
                                        } else {
                                            session.setAttribute("MSG", "");
                                        }
                            %>
                            <tr>
                                <td colspan="2" align="center"  valign="bottom" height="40px">
                                    <input type="submit" value="Login" onclick="return validateLogin()"/>
                                </td>
                            </tr>
                            <tr class="heading">
                                <td colspan="2" align="center">&nbsp;&nbsp;</td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr bgcolor="maroon" height="55" valign="buttom">
                <td colspan="4">&nbsp;</td>
            </tr>
        </table>
    </body>
</html>
