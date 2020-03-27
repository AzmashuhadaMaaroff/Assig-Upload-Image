<%-- 
    Document   : display image=
    Created on : May 16, 2019, 11:00:00 PM
    Author     : S48481
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Image</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
        <style>
            #container{
                padding: 30px;
                outline-style: solid;
                outline-color: #ff80bf;
                margin-top: 100px;
            }
            #header{
                background-color: #ffcce6;
                padding: 10px;
                margin-top: 0px;

            }
            #content{
                outline-style: solid;
                outline-color: #ffcce6;
                outline-width: thin;
                padding: 2px;
                margin-top: 10px;
                align-content: center;
            }
            label{
                float: right;
            }
            input{
                height: 25px;
            }
            input[type=submit]{
                height: 40px;
                width: 200px;
            }
        </style>
    </head>
    <body>
        <div id="mainlayout" align="center">
            <div id="container" >
                <div id="header"><h1>UPLOADING IMAGE</h1></div>
                <div id="content">
                    <br/>
                    <form action="index.jsp">
                        <h3 align="center"><%=request.getAttribute("display")%></h3>

                        <fieldset style="width:800px">
                            <table align= "center">
                                <tr>
                                    <td align= "center">
                                        <img width="380" height="250" src="data:image/jpeg;base64,<%= request.getAttribute("photo")%>"/>
                                    </td></tr>
                            </table>
                            <table align= "center">
                                <tr>
                                    <td>Image Name:</td>
                                    <td>${param.imagename}</td></tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Back"></td>
                                </tr>
                            </table>
                        </fieldset>
                    </form>
                </div></div>
        </div>
    </body>
</html>