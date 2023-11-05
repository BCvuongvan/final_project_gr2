<%-- 
    Document   : updateCatefory
    Created on : Oct 27, 2023, 8:12:05 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/styleadmin.css" rel="stylesheet">
        <<link rel="stylesheet" href="./css/style.css"/>
        <!-- icon -->
        <script src="https://kit.fontawesome.com/8143c9cd7e.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <!-- Sidebar Start 
            <%@ include file='admincomponents/adminheader.jsp' %>
            Sidebar End -->

            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <%@ include file='admincomponents/adminuser.jsp' %>
                <!-- Navbar End -->

                <!-- Recent Sales Start -->
                <div class="container_from-create">
                    <div class="form_input-create">
                        <h1>Update Category</h1>
                        <c:set var="cate" value="${requestScope.Category}"/>
                        <form action="updateCategory" method="post">
                            <h5>Enter ID </h5><input name="id" type="text" placeholder="your ID" readonly value="${cate.id}"></h5>
                            <h5>Enter name </h5><input name="name" type="text" placeholder="full name" value="${cate.name}"></h5>
                            <h5>Enter describe </h5><input name="describe" type="text" placeholder="text" value="${cate.describe}"></h5>
                            <input class="submit-updatee" type="submit" style="margin-left: 30%" value="Update"/>
                        </form>
                    </div>
                    <div class="Back-button"> 
                        <a class="Back-button-text" style="color:white ; font-size: 22px; padding-left: 5px;border-bottom: 1px solid white" href="brandmanagement">Back</a>
                    </div>
                </div>
                <!-- Recent Sales End -->
            </div>
            <!-- Content End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/chart/chart.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
