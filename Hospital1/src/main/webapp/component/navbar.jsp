<style>
    .dropbtn {
        background-color: transparent;
        color: black;
        padding: 8px;
        border: none;
    }

    /* The container <div> - needed to position the dropdown content */
    .dropdown {
        position: relative;
        display: inline-block;
    }

    /* Dropdown Content (Hidden by Default) */
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #ffeef5;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    /* Links inside the dropdown */
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    /* Change color of dropdown links on hover */
    .dropdown-content a:hover {background-color: #ffeef5;}

    /* Show the dropdown menu on hover */
    .dropdown:hover .dropdown-content {display: block;}

    /* Change the background color of the dropdown button when the dropdown content is shown */
    .dropdown:hover .dropbtn {background-color: #da91c2;}
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-transparent" style="">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical" color = "black"></i>  MEDICAL CENTER FOR RICH BITCH</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/Hospital1/signIn"><i class="fa-solid fa-arrow-right-to-bracket"color = "black"></i> Sign in</a>
                </li>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active" aria-current="page" href="/Hospital1/patient_signin.jsp"><i class="fa-solid fa-arrow-right-to-bracket"color = "black"></i> dfkjlfdbvkdf</a>--%>
<%--                </li>--%>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/Hospital1/signUp">Sign up</a>
                </li>
                <li class="nav-item">
                    <%--                    <a class="nav-link active" aria-current="page" href="account.jsp">Account</a>--%>
                    <div class="dropdown">
                        <button class="dropbtn">Account</button>
                        <div class="dropdown-content">
                            <a href="/Hospital1/account">Your account</a>
                            <a href="#">New appointment</a>
                            <a href="#">Your appointments</a>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="####"> News</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="######"> Doctors </a>
                </li>


            </ul>
        </div>
    </div>
</nav>
