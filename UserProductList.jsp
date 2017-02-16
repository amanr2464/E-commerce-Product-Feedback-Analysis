<%--
    Document   : ProductList
    Created on : JAN 12, 2017, 4:57:54 PM
    
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style-sheet.css" type="text/css"/>
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <table width="80%" align="center"  bgcolor="white">
            <tr>
                <td colspan="2" height="40px;">
                    <%@include file="header_menuUser.html" %>
                </td>
            </tr>
            <tr>
                <td colspan="2" width="100%" style="height:15px;" class="toplinls"></td>
            </tr>
            <tr>

                <td width="100%">
                    <div style="height: 350px;overflow: auto;">
                        <table width="100%">
                            <tr>
                                <%
                                            String category = request.getParameter("type");
                                            //category = request.getParameter("Category");
                                            PreparedStatement pst = null;
                                            Connection con = null;
                                            ResultSet rst = null;
                                            String prodName = null;
                                            String sizeWeight = null;
                                            String price = null;
                                            String mfgDate = null;
                                            String image = null;
                                             String color = null;
                                            String model = null;
                                            String didcrip = null;
                                            String waight = null;
                                            String video=null;
                                            String qty1=null;
                                            int i = 0;
                                            try {
                                                con = connection.connect.makeConnection();
                                                String query = "select ProductName,SizeWeight,Price,MFGDate,ProductImage,color,model,didcrip,waight,video,Productqty from Product where Category='" + category + "'";
                                                pst = con.prepareStatement(query);
                                                rst = pst.executeQuery();
                                                while (rst.next()) {
                                                    i++;
                                                    prodName = rst.getString(1);
                                                    sizeWeight = rst.getString(2);
                                                    price = rst.getString(3);
                                                    mfgDate = rst.getString(4);
                                                    image = rst.getString(5);
                                                     color = rst.getString(6);
                                                    model = rst.getString(7);
                                                    didcrip = rst.getString(8);
                                                    waight = rst.getString(9);
                                                        video = rst.getString(10);
                                                        qty1= rst.getString(11);
                                %>
                                <td>



                                    <table height="200" width="180">



                                        
                                        <tr>
              
                                            <td style="color:#003300;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=prodName%>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="color:#000099" colspan="2">
                                                <a href="productDetails.jsp?ProductID=<%=prodName%>"><img width="150px" height="100px" src="UploadedImage/<%=image%>" alt=""/></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="color:#000099" colspan="2" class="">
                                                RS:
                                            </td>
                                            <td align="left" style="color:#e34343;"><%=price%>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="color:#000099" colspan="2" class="">Discount:</td>
                                                                                 <td align="left" style="color:#e34343;"><%=10%>%

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color:#000099" class="">Mfg Date:</td>
                                                                 <td align="left" style="color:#e34343;"><%=mfgDate%>

                                            </td>
                                        </tr>
                                              <tr>
                                                  <td align="left" colspan="2" style="color:#000099">Color:</td>
                                                                                                        <td align="left" style="color:#e34343;"><%=color%>

                                            </td>
                                                  </tr>

                                        <tr>
                                            <td align="left" colspan="2" style="color:#000099;">Model:</td>
                                                                                                  <td align="left" style="color:#e34343;"><%=model%>

                                            </td>
                                        </tr>
                                             
                                              <tr>
                                            <td align="left" colspan="2" style="color:#000099;">Warrenty:</td>
                                                                                                  <td align="left" style="color:#e34343;"><%=waight%>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" colspan="2" style="color:#000099;">Available Qty:</td>
                                             <td align="left" style="color:#e34343;"><%=qty1%>
                                              </tr>
                                         <tr>
                                            <td align="left" colspan="2" style="color:#000099;">Discription:</td>
                                             <td align="left" style="color:#e34343;"><%=didcrip%>
                                              </tr>
                                                   <tr>
                                             <td style="color:#000099;" align="center"><a href="UploadedImage/<%=video%>">Video</a></td>
                                              </tr>
                                    </table>

                                </td>
                                <%
                                                                                if (i % 3 == 0) {
                                %>
                            </tr>
                            <tr>
                                <%                                                              }
                                %>

                                <%                                                  }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                %>
                            </tr>
                        </table>
                    </div>
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








