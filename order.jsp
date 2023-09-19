<%-- 
    Document   : order
    Created on : 20 Sep 2023, 12:36:12 am
    Author     : Nur Adlina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="newcss.css">
        <title>Zus Coffee Order Information</title>
    </head>
    <body>
        <div class="container">
                <h1>ZUS COFFEE ORDER INFORMATION</h1>
                <form action="orderSummary.jsp" method="post">
                    <label for="name">Name: </label>
                    <input type="text" id="name" name="name" required><br>

                    <br><label for="noTel">Phone Number: </label>
                    <input type="text" id="noTel" name="noTel" required><br>

                    <br><label for="gender">Gender: </label>
                    <select id="gender" name="gender">
                        <option value="" disabled selected>Please select</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select><br>

                    <br><table>
                        <tr>
                            <td><img src="salted_caramel_latte.png">
                                <br>Salted Caramel Latte
                                <br>RM8.50
                                <br><label for"quantity1">Quantity: </label>
                                <input type="number" id="quantity1" name="quantity1" min="0"><br>
                            </td>
                            <td><img src="cappuccino.png">
                                <br>Cappuccino
                                <br>RM7.50
                                <br><label for"quantity3">Quantity: </label>
                                <input type="number" id="quantity3" name="quantity3" min="0"><br>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="vanilla_latte.png">
                                <br>Vanilla Latte
                                <br>RM8.00
                                <br><label for"quantity2">Quantity: </label>
                                <input type="number" id="quantity2" name="quantity2" min="0">
                            </td>
                            <td><img src="cocoa_mocha.png">
                                <br>Cocoa Mocha
                                <br>RM7.50
                                <br><label for"quantity4">Quantity: </label>
                                <input type="number" id="quantity4" name="quantity4" min="0">
                            </td>
                        </tr>
                    </table>

                    <div class="button-container">
                        <input type="submit" value="Submit Order">
                        <input type="reset" value="Clear Order Form">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
