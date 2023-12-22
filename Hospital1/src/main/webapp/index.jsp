<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
   <%@include file="component/allcss.jsp" %>
    <style>
        body {
            background: #FBFAF6;
        }
    </style>

</head>
<body>
<%@include file="component/navbar.jsp"%>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://radium-aesthetics.com/wp-content/uploads/2022/10/why-choose.jpg" class="d-block w-100" alt="..." height="500">
        </div>
        <div class="carousel-item">
            <img src="https://i.pinimg.com/564x/e6/94/5a/e6945ab1fba5caaf771f2f14562fc186.jpg" class="d-block w-100" alt="..." height="500">
        </div>
        <div class="carousel-item">
            <img src="https://c0.wallpaperflare.com/preview/358/580/45/flatlay-medical-local-doctor.jpg" class="d-block w-100" alt="..." height="500">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container p-3">
    <p class="text-center fs-2 ">Key Features of our medical centre</p>

    <div class="row">
        <div class="col-md-8 p-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">100% Safety</p>
                            <p>We carefully monitor the cleanliness of our clinic, so you don’t have to worry about it.
                                For each patient we have an individual set of consumables, every instrument is sterilized.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Comfort</p>
                            <p>We care about our visitors, so in our medical center you will not feel intimidated, as we have tried to make the environment welcoming and comfortable.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-2">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Best Doctors</p>
                            <p>We select highly qualified specialists who will be happy to help you solve any problems.
                                Our doctors have extensive experience.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-2">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Medical Research</p>
                            <p>In our medical center you can undergo examinations and take the necessary tests, since we have our own laboratory.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <img alt="" src="https://i.pinimg.com/564x/cf/bd/c0/cfbdc0771c4f7cb3eea1caa8ccf65f73.jpg" height="416px" style="margin-top: 48px">
        </div>

    </div>
</div>

<%--<div style="position:relative;overflow:hidden;">--%>
<%--    <a href="https://yandex.ru/maps/41/yoshkar-ola/?utm_medium=mapframe&utm_source=maps"--%>
<%--       style="color:#eee;font-size:12px;position:absolute;top:0px;">Йошкар‑Ола</a>--%>
<%--    <a href="https://yandex.ru/maps/41/yoshkar-ola/house/ulitsa_stroiteley_34b/YE4YfgVoQUUEQFtsfXpyeX1gYQ==/?ll=47.828803%2C56.638135&utm_medium=mapframe&utm_source=maps&z=16.62"--%>
<%--       style="color:#eee;font-size:12px;position:absolute;top:14px;">Улица Строителей, 34Б — Яндекс Карты</a>--%>
<%--    <iframe src="https://yandex.ru/map-widget/v1/?ll=47.828803%2C56.638135&mode=search&ol=geo&ouri=ymapsbm1%3A%2F%2Fgeo%3Fdata%3DCgg1NzkxNzExMxJu0KDQvtGB0YHQuNGPLCDQoNC10YHQv9GD0LHQu9C40LrQsCDQnNCw0YDQuNC5INCt0LssINCZ0L7RiNC60LDRgC3QntC70LAsINGD0LvQuNGG0LAg0KHRgtGA0L7QuNGC0LXQu9C10LksIDM00JEiCg2xUD9CFXONYkI%2C&z=16.62" width="560" height="400" frameborder="1" allowfullscreen="true"--%>
<%--            style="position:relative;"></iframe>--%>

<%--</div>--%>
<hr>

<div class="container p-2">
    <p class="text-center fs-2 ">Our Team</p>

    <div class="row">
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="https://i.pinimg.com/564x/b3/34/5f/b3345fc713e6cacf5c94563256f14634.jpg" width="220px" height="280px">
                    <p class="fw-bold fs-5">Ivan Chongukov</p>
                    <p class="fs-7">(CEO & Chairman)</p>
                </div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="https://i.pinimg.com/564x/8f/4a/be/8f4abebf916bb58da2b4eaa582626098.jpg" width="220px" height="280px">
                    <p class="fw-bold fs-5">Petr Petrov</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="https://i.pinimg.com/564x/ca/32/2f/ca322f044762a9e13b9375114f1d45d8.jpg" width="220px" height="280px">
                    <p class="fw-bold fs-5">Aleksandr Aleksandrov</p>
                    <p class="fs-7">(Chief psychotherapist)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="https://i.pinimg.com/564x/ba/9c/f0/ba9cf08f425a94141a99e276c157336d.jpg" width="220px" height="280px">
                    <p class="fw-bold fs-5">Pavel Pavlov</p>
                    <p class="fs-7">(Chief nurse)</p>
                </div>
            </div>
        </div>

    </div>

</div>

<hr>

<p class="text-center fs-2 ">Our location</p>
<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Ae953fb03d278ef5af1b386e596feb1cc6b34809d2da2cc5da9f5a615a1d0828f&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true"></script>




<%@include file="component/footer.jsp"%>

</body>
</html>
