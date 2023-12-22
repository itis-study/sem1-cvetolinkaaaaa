<%--
  Created by IntelliJ IDEA.
  User: cvetolinaevseeva
  Date: 08.10.2023
  Time: 03:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign in</title>
    <%@include file="component/allcss.jsp" %>
    <%--    <link rel="stylesheet" href="/component/button.css">--%>
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
    <script>
        function ValidPhone() {
            var re = /^[\d\+][\d\(\)\ -]{4,14}\d$/;
            var myPhone = document.getElementById('phone').value;
            var valid = re.test(myPhone);
            if (!valid) output = 'Enter correct number';
            document.getElementById('message').innerHTML = document.getElementById('message').innerHTML+'<br />'+output;
            return valid;
        }
    </script>
</head>
<body class="text-center">
<%@include file="component/navbar.jsp"%>
<main class="form-signin">
    <form style="background: #f5d3ee; width: 600px; padding: 50px;
  position: fixed; top: 50%; left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);" action="/Hospital1/signUp" method="post">
        <%--        <img class="mb-4" src="https://w7.pngwing.com/pngs/369/10/png-transparent-peony-flower-peony-herbaceous-plant-floribunda-rose-order.png" alt="" width="72" height="57">--%>
        <h1 class="h3 mb-3 fw-normal">Registration</h1>

        <div class="form-floating">
            <input type="text" class="form-control" placeholder="name" name="name">
            <label>Name</label>
        </div>

        <br style="line-height: 3px">

            <div class="form-floating">
                <input type="text" class="form-control" placeholder="surname" name="surname">
                <label>Surname</label>
            </div>

            <br style="line-height: 3px">

            <div class="form-floating">
                <input type="date" class="form-control" placeholder="date" name="date">
                <label>Birth date</label>
            </div>

            <br style="line-height: 3px">

        <div class="form-floating">
            <input type="text" class="form-control"  placeholder="email" name="email">
            <label>Email address</label>
        </div>
        <br style="line-height: 3px">

        <div class="form-floating">
            <input type="text" class="form-control"  placeholder="telephone" name="telephone">
            <label>Telephone</label>
        </div>
        <br style="line-height: 3px">

        <div class="form-floating">
            <input type="password" class="form-control"  placeholder="password" name="password">
            <label>Password</label>
        </div>

        <%--        <div class="checkbox mb-3">--%>
        <%--            <label>--%>
        <%--                <input type="checkbox" value="remember-me"> Remember me--%>
        <%--            </label>--%>
        <%--        </div>--%>
        <br style="line-height: 3px">
        <button class="c-button" onclick="ValidPhone();" type="submit">Sign up</button>
    </form>
</main>

</body>
</html>
