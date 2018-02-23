<%-- 
    Document   : Login
    Created on : Feb 23, 2018, 1:58:46 PM
    Author     : mahrous
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ChatRoom Login</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/tether.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style>
            @media(min-width: 768px) {
                .field-label-responsive {
                    padding-top: .5rem;
                    text-align: right;
                }
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-inverse bg-inverse navbar-toggleable-md">
            <a class="navbar-brand" href="#">Java ChatRoom</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Registration.jsp">Registration</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <form class="form-horizontal" role="form" method="POST" action="Login">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <h2>Login</h2>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="name">Name</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                                <input type="text" name="username" class="form-control" id="name"
                                       placeholder="Muhamed Mahrous" required autofocus>
                            </div>
                        </div>
                    </div>
                </div>             
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="password">Password</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group has-danger">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                                <input type="password" name="password" class="form-control" id="password"
                                       placeholder="Password" required>
                            </div>
                        </div>
                    </div>
                </div>       
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success">Login</button>
                    </div>
                </div>
            </form>
        </div>
    </body>

</html>
