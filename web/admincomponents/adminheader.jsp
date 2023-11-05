<%-- 
    Document   : adminheader
    Created on : Oct 20, 2023, 3:48:15 PM
    Author     : LENOVO
--%>


<!-- Sidebar Start -->
<div class="sidebar pe-4 pb-3">
    <nav class="navbar bg-light navbar-light">
        <a href="index.html" class="navbar-brand mx-4 mb-3">
            <h3 class="text-primary"><i class="fa-solid fa-poo"></i> Admin</h3>
        </a>
        <div class="d-flex align-items-center ms-4 mb-4">
            <div class="position-relative">
                <img class="rounded-circle" src="assets/picture/${sessionScope.account.picture}" alt="" style="width: 40px; height: 40px;">
                <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
            </div>
            <div class="ms-3">
                <h6 class="mb-0">${sessionScope.account.fullName}</h6>
                <span>Ad</span>
            </div>
        </div>
        <div class="navbar-nav w-100">
            <a href="admin" class="nav-item nav-link"><i class="fa-solid fa-house"></i>Home</a>
            <a href="brandmanagement" class="nav-item nav-link"><i class="fa-solid fa-warehouse"></i>brand management</a>
            <a href="productmangement?id=" class="nav-item nav-link"><i class="fa-solid fa-list-check"></i>Product Management</a>
            <a href="accountManagement" class="nav-item nav-link"><i class="fa-solid fa-user-gear"></i>account management</a>
            <a href="orderManagement" class="nav-item nav-link"><i class="fa-brands fa-first-order-alt"></i>order management</a>
            <a href="home" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Shopping</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="signin.html" class="dropdown-item">Sign In</a>
                    <a href="signup.html" class="dropdown-item">Sign Up</a>
                    <a href="404.html" class="dropdown-item">404 Error</a>
                    <a href="blank.html" class="dropdown-item">Blank Page</a>
                </div>
            </div>
            <div class="refresh">
                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-arrows-rotate"></i>REFRESH</a>
            </div>
        </div>
    </nav>
</div>
<!-- Sidebar End -->