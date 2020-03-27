<%-- 
    Document   : fileUpload
    Created on : May 16, 2019, 5:51:31 PM
    Author     : S48481
--%>


<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload Page</title>
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
                height: 30px;
                width: 100px;
            }
        </style>
        <script type='text/javascript' style="width:300px; height:300px;">
            function preview_image(event)
            {
                var reader = new FileReader();
                reader.onload = function()
                {
                    var output = document.getElementById('output_image');
                    output.src = reader.result;
                }
                reader.readAsDataURL(event.target.files[0]);
            }
        </script>
        <style>
            body
            {
                width:100%;
                margin:0 auto;
                padding:0px;
                font-family:helvetica;
            }
            #wrapper
            {
                text-align:center;
                margin:0 auto;
                padding:0px;
                width:995px;
            }
            #output_image
            {
                max-width:300px;
            }
        </style>
    </head>
    <body>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px">
                <div id="header"><h2>UPLOAD IMAGE HERE</h2></div>
                <div id="content">
                    <form action="FileUploadServlet" method="post" enctype="multipart/form-data">
                        <table class="table table-hover">
                            <tr>
                                <th>Uploading</th>
                            </tr>
                            <tr>
                                <td>Image Name</td>
                                <td><input type="text" name="imagename"/></td>
                            </tr>
                            <tr>
                                <td>Image link </td>
                                <td><input type="file" name="photo" accept="image/*" onchange="preview_image(event)">
                                    <img id="output_image"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Submit"/></td>
                            </tr>
                        </table>
                        <h5><b>&copy 2019- Azmashuhada Maaroff</b></h5>
                    </form>      
                </div>
            </div>
        </div>
    </body>
</html>
