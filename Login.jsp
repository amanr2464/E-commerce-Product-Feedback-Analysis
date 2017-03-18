<%--
    Document   : MallShopingHome
    Created on : Dec 18 2016, 20:38:35 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style-sheet.css" type="text/css"/>
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css"/>
        <title>JSP Page</title>
        <script type="text/javascript">
            function validate(){
                if(document.getElementById("cmbType").value=="-1"){
                    alert("Select user type!");
                    return false;
                }
                if(document.getElementById("txtname").value==""){
                    alert("Enter user name !");
                    return false;
                }
                if(document.getElementById("txtpwd").value==""){
                    alert("Enter your password !");
                    return false;
                }
            }

        </script>
    </head>
    <%
                String msg = null;
                msg = (String) session.getAttribute("MSG");
    %>
    <body>
        <table width="80%" bgcolor="White" align="center" bgcolor="white">
            <tr>
                <td colspan="2" height="40px;">
                    <%@include file="header_menu.html" %>
                </td>
            </tr>
            <tr>
                <td colspan="2" width="100%" style="height:15px;" class="toplinls"></td>
            </tr>
            <tr>
                <td width="65%" valign="top">
                    <table>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td class="heading">
                                About The Mall Shopping
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td align="justify" class="text">
                                Experience and become a leader in retail, entertainment and attractions. Mall of America is one of the top tourist destinations in the country as well as one of the most recognizable brands.
                                Mall of America has earned a national reputation for entertaining guests. From musical acts to celebrity book signings to fashion shows, Mall of America is the Hollywood of the Midwest. Along with coverage in many national and local broadcast and print media outlets, Mall of America has been featured on the Discovery Channel, Travel Channel and TLC. By hosting more than 400 events each year, the Mall has become the place where fans can meet and greet their favorite celebrities or take part in interactive, one-of-a-kind events.
                                Mall of America has been described as a city within a city. Along with an extensive range of retail, restaurants and entertainment, there are many unique features to Mall of America likely to be found in any community.
                                Metropolitan Learning Alliance - A mall campus available for high school students from four-area school districts offering courses specific to careers in visual arts, law enforcement, hospitality, retail management and business.
                                South Hennepin Adult Programs in Education (SHAPE) - Offers classes in adult basic education and English as a second language.
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="35%" valign="top" align="right">
                    <table>
                        <tr>
                            <td bgcolor="#f1f1f1" valign="top" align="right">
                                <form method="post" action="login">
                                    <table cellpadding="3" cellspacing="3" align="center" width="100%" >
                                        <tr>
                                            <td colspan="2" class="white-font" align="center">
                                                Login
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <td valign="bottom"  id="label">
                                                User Type :
                                            </td>
                                            <td>
                                                <select name="cmbType" id="cmbType" class="combo">
                                                    <option value="-1">--Select--</option>
                                                    <option value="Admin">Admin</option>
                                                   
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle"  id="label">
                                                Login Name :
                                            </td>
                                            <td valign="bottom">
                                                <input type="text" name="txtname" id="txtname" size="25"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td  valign="middle"  id="label">
                                                Password :
                                            </td>
                                            <td valign="bottom">
                                                <input type="password" name="txtpwd" id="txtpwd" size="25"/>
                                            </td>
                                        </tr>
                                        <%
                                                    if (msg != null) {
                                        %>
                                        <tr>
                                            <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                                        </tr>
                                        <%
                                                        session.removeAttribute("MSG");
                                                    } else {
                                                        session.setAttribute("MSG", "");
                                                    }
                                        %>
                                        <tr>
                                            <td colspan="2" align="right"  valign="bottom">
                                                <input type="submit" value="Login" onclick="return validate()"/>
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <td colspan="2">
                                                <img src="Image/head.jpg" width="270px" height="100px" alt=""/>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </td>
                        </tr>
                    </table>
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
