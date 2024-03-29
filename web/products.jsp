<%-- 
Document   : products
Created on : Sep 30, 2023, 9:42:31 AM
Author     : ADMIN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shopping</title>
        <link rel="stylesheet" href="./css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
              rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/8143c9cd7e.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/26eb80e241.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <!--Header-->
        <%@ include file='./components/header.jsp' %>

        <div class="small-container">

            <form>
                <input type="text" name="searching" placeholder="Searching..." class="searchBox"/>
                <button type="submit" class="searchBtn">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </form>

            <div class="row row-2">
                <h2>All Products</h2>
                <select>
                    <option>Default Sort</option>
                    <option>Sort By Price</option>
                    <option>Sort By Popularity</option>
                    <option>Sort By Rating</option>
                    <option>Sort By Sale</option>
                </select>
            </div>
            <div class="row">
                <div class="col-4">
                    <a href="productsdetail"><img src="./assets/images/product-1.jpg"></a>
                    <h4>Red Printed T-Shirt</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <p>$50.00</p>
                </div>       
            </div>
            <div class="page-btn">
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>&#8594;</span>
            </div>
        </div>

        <!-- Footer -->
        <%@ include file='./components/footer.jsp' %>