<%--
    Document   : Home
    Created on : Feb 22, 2011, 3:15:07 AM
    Author     : softavate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/menu.css"/>
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css"/>
        <link type="text/css" rel="stylesheet" href="css/style-sheet.css"/>
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
        <title>Feedback</title>
        <script type="text/javascript">
            function valid() {
                //alert('calling');
                var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                // var address = document.forms[form_id].elements[txtemail_id].value;
                var address = document.getElementById('txtemail').value;
                if(reg.test(address) == false) {
                    alert('Invalid Email Address');
                    return false;
                }
            }

        </script>
        <script type="text/javascript">
            function contact(i)
            {
                if(i.value.length>0)
                {
                    i.value = i.value.replace(/[^\d]+/g, '');

                }
            }
            function mob(rl)
            {
                //var rl=document.getElementById("txtcontactno").value;
                if(rl.toString().length<10||rl.toString().length>10)
                {
                    alert("Mobile No. must be of ten digits");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <table width="83%" align="center"  bgcolor="white">
            <tr height="20px">
                <td>
                    <table width="100%">                        
                        <tr>
                            <td>
                               <%@include file="header_menuUser.html" %>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" width="83%" style="height:15px;" class="toplinls"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="white"  align="center">
                 
                        <table align="center" cellpadding="3" cellspacing="3">
                            <tr>
                                <td colspan="2" height="40px" valign="top" align="center">
                                    <strong style="font-size: 18px;font-weight: bold;">Customer Service</strong>                            </td>
                            </tr>
                            <%
                                        String msg = null;
                                        msg = (String) session.getAttribute("MSG");
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
                                        
                                        String pid=request.getParameter("PorductID");
                            %>
                            <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
                                <link rel="stylesheet" href="ajax/stylesheet.css">
                             <form action="save_comment.jsp" method="post">
                                            <table class="">
                                              
                                                <tr>
                                                    <td>
                                                <center><div class="stars">

                                                        <input class="star star-5" id="star-5" type="radio" name="star" value="5"/>
                                                        <label class="star star-5" for="star-5"></label>
                                                        <input class="star star-4" id="star-4" type="radio" name="star" value="4"/>
                                                        <label class="star star-4" for="star-4"></label>
                                                        <input class="star star-3" id="star-3" type="radio" name="star" value="3"/>
                                                        <label class="star star-3" for="star-3"></label>
                                                        <input class="star star-2" id="star-2" type="radio" name="star" value="2"/>
                                                        <label class="star star-2" for="star-2"></label>
                                                        <input class="star star-1" id="star-1" type="radio" name="star" value="1"/>
                                                        <label class="star star-1" for="star-1"></label>

                                                    </div>
                                                    </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <input type='hidden' name='pid' value="<%=pid%>">
                                                            <textarea cols="35" rows="5" name="txtcomment" placeholder="Write your comment here"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <button type="submit" >Submit</button>
                                                        </td>
                                                    </tr>

                                            </table>


                                        </form>
                   
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
