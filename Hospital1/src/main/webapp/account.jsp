<%@ page import="org.example.Patient" %><%--
  Created by IntelliJ IDEA.
  User: cvetolinaevseeva
  Date: 23.10.2023
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personal page</title>
    <%@include file="component/allcss.jsp" %>
    <style>
        /*.c-button {*/
        /*    border-radius: 10px;*/
        /*    color: white;*/
        /*    transition: .2s linear;*/
        /*    background: #da91c2;*/
        /*    min-width: 100px;*/
        /*}*/

        /*.c-button:hover {*/
        /*    box-shadow: #c9509b 0 0px 0px 40px inset;*/
        /*}*/
        .c-button {
            border: none;
            border-radius: 5px;
            text-decoration: none;
            color: white;
            background: #e8afd7;
            box-shadow: 0 5px 0 #da91c2;
            min-width: 150px;
        }

        .c-button:hover {
            background: #da91c2;
            box-shadow: none;
            position: relative;
            top: 5px;
        }
        body {
            background: #FBFAF6;
        }
        </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<%--    <h1> Your account </h1>--%>
<%
    Patient patient = (Patient) request.getAttribute("user");
    String name = patient.getName();
    String surname = patient.getSurname();
    String birthDate = String.valueOf(patient.getBirthDate());
    String telephone = patient.getTelephone();
    String email = patient.getEmail();
%>
<form style="background: #f5d3ee; width: 600px; padding: 50px;
  position: fixed; top: 50%; left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);" action="/Hospital1/account" method="post">
    <%--        <img class="mb-4" src="https://w7.pngwing.com/pngs/369/10/png-transparent-peony-flower-peony-herbaceous-plant-floribunda-rose-order.png" alt="" width="72" height="57">--%>
    <h1 class="h3 mb-3 fw-normal">Your account</h1>

    <div class="form-floating">
        <p> Name </p>
        <p> <input type="text" class="form-control" name="name" value="<%= name %>"></p>


    </div>

<%--    <br style="line-height: 3px">--%>

    <div class="form-floating">
        <p> Surname </p>
        <p> <input type="text" class="form-control" name="surname" value="<%=surname%>"> </p>

    </div>

<%--    <br style="line-height: 3px">--%>

    <div class="form-floating">
        <p> Birth date</p>
        <p>  <input type="date" class="form-control" value = <%= birthDate%> name="date"> </p>

    </div>

<%--    <br style="line-height: 3px">--%>

    <div class="form-floating">
        <p> Email address </p>
        <p> <input type="text" class="form-control" name="email" value="<%=email%>"></p>
    </div>
<%--    <br style="line-height: 3px">--%>

    <div class="form-floating">
        <p> Telephone </p>
        <p> <input type="text" class="form-control" name="telephone" value="<%= telephone%>">  </p>
    </div>
<%--    <br style="line-height: 3px">--%>

<%--    <div class="form-floating">--%>
<%--        <input type="password" class="form-control"  placeholder="password" name="password">--%>
<%--        <label>Password</label>--%>
<%--    </div>--%>

    <br style="line-height: 3px">
    <button class="c-button" onclick="ValidPhone();" type="submit">Change</button>
</form>
<%--<h3> <%= name %></h3>--%>
<%--<h3> <%= surname %></h3>--%>
<%--<h3> <%= birthDate %></h3>--%>
<%--<h3> <%= telephone %></h3>--%>
<%--<h3> <%= email %></h3>--%>

</body>
</html>
