<%-- 
    Document   : orderSummary
    Created on : 20 Sep 2023, 12:56:20 am
    Author     : Nur Adlina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    String noTel = request.getParameter("noTel");
    String gender = request.getParameter("gender");

    // Initialize variables with default values
    int coffee1 = 0;
    int coffee2 = 0;
    int coffee3 = 0;
    int coffee4 = 0;

    // Parse the parameters if they are not empty or null
    if (request.getParameter("quantity1") != null && !request.getParameter("quantity1").isEmpty()) {
        coffee1 = Integer.parseInt(request.getParameter("quantity1"));
    }
    if (request.getParameter("quantity2") != null && !request.getParameter("quantity2").isEmpty()) {
        coffee2 = Integer.parseInt(request.getParameter("quantity2"));
    }
    if (request.getParameter("quantity3") != null && !request.getParameter("quantity3").isEmpty()) {
        coffee3 = Integer.parseInt(request.getParameter("quantity3"));
    }
    if (request.getParameter("quantity4") != null && !request.getParameter("quantity4").isEmpty()) {
        coffee4 = Integer.parseInt(request.getParameter("quantity4"));
    }

    int totalQuantity = coffee1 + coffee2 + coffee3 + coffee4;
    double total = (coffee1 * 8.5) + (coffee2 * 7.5) + (coffee3 * 8) + (coffee4 * 7.5);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Summary</title>
        <style>
            body {
                background-image: url('14.png'); /* Replace with the path to your background image */
                background-size: 1400px 650px ; /* Adjusts the image to cover the entire body */
                background-repeat: no-repeat; /* Prevents image repetition */
                background-attachment: fixed; /* Keeps the background fixed while scrolling */
                margin: 150px 20px 15px 20px; /* Remove default body margin */
                padding: 0; /* Remove default body padding */
                font-family: Georgia, serif;
            }
            .container {
                background-color: #fff;
                padding:10px 20px 15px 20px;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
                width: 750px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Here's your order summary for ZUS COFFEE</h1>
            <p>Hi <%= "male".equals(gender) ? "Mr." : "Miss"%> <%= name%>,</p>
            <p>Your contact number is: <%= noTel%></p>
            <p>Your ordered: <%= totalQuantity%> drinks</p>
            <p>Your bill is: RM <%= total%></p>
            <h2> Enjoy your drinks! Please come again! </h2>
        </div>
    </body>
</html>
