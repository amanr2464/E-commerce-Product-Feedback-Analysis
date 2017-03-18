<%--
    Document   : Purchase
    Created on : JAN 16, 2017, 2:59:16 PM
    
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
            String msg = null;
            msg = (String) session.getAttribute("MSG");


            String selsId = connection.Auto_Gen_ID.globalGenId("SEL-", "sales");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css"/>
        <link type="text/css" rel="stylesheet" href="css/style-sheet.css"/>
        <link rel="stylesheet" href="css/menu.css" type="text/css"/>
        <script type="text/javascript" src="js/calander.js"></script>
        <script type="text/javascript" src="js/UserPurchase.js"></script>
        <title>User Purchase Page</title>
        <script type="text/javascript">
            function calculate(){

                var price=document.getElementById("txtPrice").value;
                var qty=document.getElementById("txtQuantity").value;
                var total=price*qty;
                var gross=total+(total*10/100);
                document.getElementById("Total").value=gross;
                document.getElementById("txtRs").value=gross;
                calculateRed();
                confirmPwd();
            }
            function calculateRed(){

                var price=document.getElementById("txtPrice").value;
                var qty=document.getElementById("txtQuantity").value;
                //var red=document.getElementById("txtReedmed").value;
                var total=price*qty;
                var gross=total+(total*10/100);
                document.getElementById("Total").value=gross;
                document.getElementById("txtRs").value=gross;
                if(total<=1000)
                {
                    var reed=100;
                    document.getElementById("txtReedmed").value=reed;

                }
                 else if(total<=5000)
                {
                    var reed=500;
                    document.getElementById("txtReedmed").value=reed;

                }
                else if(total<=10000)
                {
                    var reed=1000;
                    document.getElementById("txtReedmed").value=reed;

                }
                 else if(total>10000)
                {
                    var reed=2000;
                    document.getElementById("txtReedmed").value=reed;

                }

            }
            function confirmPwd(){
            var a = document.getElementById('txtQuantity').value;
            var b = document.getElementById('txtQuantity1').value;
            if(a < b){
               
                return true;
            }
            else
                alert('Please Enter the same or less Quantity');
                return false;

        }
        </script>
    </head>

    <body>
        <form method="post" action="PurchaseUser"/>
            <table  align="center" width="80%" class="formTable" height="700">
                <tr height="40px">
                    <td>
                        <table width="100%">
                            <tr>
                                <td>
                                    <%@include file="header_menuUser.html" %>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" width="100%" style="height:15px;" class="toplinls"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <%
                            if (msg != null) {
                %>
                <tr>
                    <td style="font-family: verdana;color: red;font-size: 10px" align="center"><%=msg%></td>
                </tr>
                <%
                                session.removeAttribute("MSG");
                            } else {
                                session.setAttribute("MSG", "");
                            }
                %>
                <tr>
                    <td colspan="4" valign="top">
                        <table cellpadding="3" cellspacing="3" align="center" width="80%" class="formTable">
                            <tr>
                                <td></td>
                                <td>
                                    <input type="hidden" name="txtPurchaseId" id="txtPurchaseId" size="33" value="<%=selsId%>" />
                                </td>
                            </tr>

                            <tr>
                                <td class="candidate">
                                    Product Id :
                                </td>
                                <%

                                            String pid = request.getParameter("cmbProID");
                                            System.out.println("pid=" + pid);

                                            PreparedStatement pst = null;
                                            Connection con = null;
                                            ResultSet rst = null;
                                            String size="",price="",quant="";
                                            try {
                                                con = connection.connect.makeConnection();
                                                String query = "select SizeWeight,price,Productqty from product where productid='"+pid+"'";
                                                System.out.println(query);
                                                pst = con.prepareStatement(query);
                                                rst = pst.executeQuery();
                                                if (rst.next()) {
                                                    size=rst.getString(1);
                                                    price=rst.getString(2);
                                                    quant=rst.getString(3);
                                                }
                                            } catch (Exception e) {
                                            }

                                %>


                                <td>
                                    <input type="text" value="<%=pid%>" name="pid">

                                </td>

                                <td class="candidate">
                                    Size/Weight :
                                </td>
                                <td>
                                    <input type="text" name="txtSeizeWeight" id="txtSeizeWeight" value="<%=size%>" size="33" />
                                </td>
                            </tr>
                            <tr>
                                <td class="candidate">
                                    Price :
                                </td>
                                <td>
                                    <input type="text" name="txtPrice" id="txtPrice" value="<%=price%>"  size="33" />
                                </td>


                                <td class="candidate">
                                    Purchase Quantity :
                                </td>
                                <td>
                                    <input type="text" name="txtQuantity" id="txtQuantity" size="33" onblur="calculate()"   />
                                </td>
                            </tr>
                            <tr>
                                <td class="candidate">
                                    Total :
                                </td>
                                <td>
                                    <input type="text" name="Total" id="Total" size="33" readonly/>
                                </td>
                                <td class="candidate">
                                   Available Quantity :
                                </td>
                                <td>
                                    <input type="text" name="txtQuantity" id="txtQuantity1" size="33" value="<%=quant%>" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <strong><u>Payment</u></strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="candidate">
                                    Bank Name :
                                </td>
                                <td>
                                    <select name="cmbBankName" id="cmbBankName">
                                        <option value="-1">--Select--</option>
                                        <option value="State Bank Of India">State Bank Of India</option>
                                        <option value="Punjab National Bank">Punjab National Bank</option>
                                        <option value="Bank Of Baroda">Bank Of Baroda</option>
                                        <option value="Allahabad Bank">Allahabad Bank</option>
                                        <option value="Federal Bank">Federal Bank</option>
                                        <option value="Uco Bank">Uco Bank</option>
                                        <option value="HDFC Bank">HDFC Bank</option>
                                        <option value="Andhra Bank">Andhra Bank</option>
                                        <option value="Axis Bank">Axis Bank</option>
                                        <option value="ICICI Bank">ICICI Bank</option>
                                        <option value="Karnatka Bank">Karnatka Bank</option>
                                        <option value="Co Operative Bank">Co Operative Bank</option>
                                        <option value="Union Bank">Union Bank</option>
                                    </select>
                                </td>


                                <td class="candidate">
                                    Account No :
                                </td>
                                <td>
                                    <input type="text" name="txtAccountNo" id="txtAccountNo" size="33"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="candidate">
                                    Password :
                                </td>
                                <td>
                                    <input type="password" name="txtPassword" id="txtPassword" size="33" />
                                </td>


                                <td class="candidate">
                                    Rs :
                                </td>
                                <td>
                                    <input type="text" name="txtRs" id="txtRs" size="33" onblur="calculate()" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Reedmed Point</td>
                                <td><input type="text" name="txtReedmed" id="txtReedmed"  size="33"/></td>

                            </tr>
                            <tr>
                                <td colspan="4" align="center">
                                    <input type="submit" name="btnSubmit" id="btnSubmit" value="Submit" id="Button" onclick="return validateUserPurchase()"/>
                                    <input type="reset" name="btnReset" id="btnReset" value="Reset" id="Button"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="50" colspan="2" align="center">
                        <span class="whitefont">Online Mall Shopping</span>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

