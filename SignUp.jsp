<%--
    Document   : SignUp
    Created on : Dec 12, 2016, 11:03:48 AM    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style-sheet.css" type="text/css"/>
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css"/>
        <script type="text/javascript" src="js/calander.js"></script>
        <title>JSP Page</title>
        <script type="text/javascript">

            function CheckForIntegers(i)
            {
                if(i.value.length>0)
                {
                    i.value = i.value.replace(/[^\d]+/g, '');

                }
            }

            /******************** Function For Check Email Validation**************************/

            function validateEmail() {
                //alert('calling');
                var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                var address = document.getElementById('EmailID').value;
                if(reg.test(address) == false) {
                    alert('Invalid Email Address');
                    return false;
                }
            }

            function valid(){

                if(document.getElementById('txtUserName').value == ""){
                    alert('User Name Field Cannot be Blank Left !!');
                    return false;
                }

                if(document.getElementById('txtPassword').value == ""){
                    alert('Password Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('txtFullName').value == ""){
                    alert('Full Name Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('DateOfBirth').value == ""){
                    alert('Date of Birth Field Cannot be Blank Left !!');
                    return false;
                }
            }

            function validatepassword(){

                var a = document.getElementById('txtPassword').value;
                var b = document.getElementById('ConfPass').value;
                if(a != b){
                    alert('Confirm Password Does Not Matched !!');
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
        <table width="80%" align="center"  bgcolor="white">
            <tr>
                <td colspan="2" height="40px;">
                    <%@include file="header_menu.html" %>
                </td>
            </tr>
            <tr>
                <td colspan="2" width="100%" style="height:15px;" class="toplinls"></td>
            </tr>
            <tr>
                <td width="100%" align="center">
                    <table>
                        <tr>
                            <td class="heading">
                                Sign Up
                            </td>
                        </tr>
                        <tr valign="top">
                            <td bgcolor="white">
                                <form method="post" action="signUp">
                                    <table width="100%" >
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
                                            <td  height="40px" id="label">User Name :</td>
                                            <td>
                                                <input type="text" name="txtUserName" id="txtUserName" size="33" class=""/>
                                            </td>
                                            <td height="40px" id="label">Full Name :</td>
                                            <td>
                                                <input type="text" name="txtFullName" id="txtFullName" size="33" class=""/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="40px" id="label"> Password :</td>
                                            <td>
                                                <input type="password" name="txtPassword" id="txtPassword"size="33"/>
                                            </td>
                                            <td height="40px" id="label">Confirm Password :</td>
                                            <td>
                                                <input type="password" name="ConfPass" id="ConfPass"size="33"onblur="return validatepassword();"/>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td height="40px" id="label">Date of Birth :</td>
                                            <td>
                                                <input type="text" name="DateOfBirth" id="DateOfBirth"size="33"readonly onclick="scwShow(this,event);" />
                                            </td>
                                            <td height="40px" id="label">Gender :</td>
                                            <td>
                                                <select name="cmbgender" id="cmbgender" style="width: 215px;">
                                                    <option value="-1">Select</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="40px" id="label">Email Id :</td>
                                            <td>
                                                <input type="text" name="EmailID" id="EmailID"size="33" onblur="return validateEmail();" />
                                            </td>
                                            <td height="40px" id="label">Contact No :</td>
                                            <td>
                                                <input type="text" name="txtCnctNo" id="txtCnctNo" class=""size="33" onkeyup="CheckForIntegers(this)"/>
                                            </td>
                                        </tr>
                                          <tr>
                                              <td height="40px" id="label">Full&nbsp;Address :</td>
                                            <td>
                                                <input type="text" name="txtbname" id="txtbname"size="33"/>
                                            </td>
     <td class="text">City:</td>
                                                                <td>
                                                                    <select id="cmbcity"   name="cmbcity" style="width: 180px;">
                                                                        <option value="Select"> Select </option>
                                                                        <option value="Delhi">  Delhi </option>
                                                                        <option value="Gurgoan"> Gurgoan </option>
                                                                        <option value="Noida"> Noida </option>
                                                                    </select>
                                                                </td>
                                        </tr>
           
                                        <tr>
                                              <td height="40px" id="label">Country&nbsp; :</td>
                                              <td>
                                                                    <select id="cmbcountry"   name="cmbcountry" style="width: 180px;">
                                                                        <option value="Select"> Select </option>
                                                                        <option value="Delhi">  Delhi </option>
                                                                        <option value="Gurgoan"> Gurgoan </option>
                                                                        <option value="Noida"> Noida </option>
                                                                        <option value="Basrah"> Basrah </option>
                                                                    </select>
                                                                </td>
   <td height="40px" id="label">Pin&nbsp;Code :</td>
                                            <td>
                                                <input type="text" name="txtpin" id="txtpin"size="33"/>
                                            </td>
                                        </tr>

                                          
                                        <tr>
                                            <td align="center" colspan="4">
                                                <input type="submit" name="btnSubmit" id="btnSubmit"value="Create New User" class="button" onclick="return valid();"/>
                                                <input type="reset" name="btnreset" id="btnreset"value="Reset" class="button"/>
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


