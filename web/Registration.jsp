<%-- 
    Document   : Registration
    Created on : Feb 23, 2018, 2:11:48 PM
    Author     : mahrous
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/tether.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>

    <body>
        <nav class="navbar navbar-inverse bg-inverse navbar-toggleable-md">
            <a class="navbar-brand" href="#">Java ChatRoom</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <form class="form-horizontal" role="form" method="POST" action="Register" onsubmit="return validate()">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <h2>Register New User</h2>
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
                                <div class="input-group-addon" style="width: 2.6rem">
                                    <i class="fa fa-user"></i>
                                </div>
                                <input type="text" name="name" class="form-control" id="name" placeholder="Muhammed Mahrous" required autofocus>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="email">E-Mail Address</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon" style="width: 2.6rem">
                                    <i class="fa fa-at"></i>
                                </div>
                                <input type="text" name="email" class="form-control" id="email" placeholder="you@example.com" required autofocus pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" id="confirmEmailMsg" hidden>
                        <div class="form-control-feedback">
                            <span class="text-danger align-middle">
                                Please enter E-mail with valid format
                            </span>
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
                                <div class="input-group-addon" style="width: 2.6rem">
                                    <i class="fa fa-key"></i>
                                </div>
                                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="password">Confirm Password</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon" style="width: 2.6rem">
                                    <i class="fa fa-repeat"></i>
                                </div>
                                <input type="password" name="password-confirmation" class="form-control" placeholder="Password" id="password-confirmation"
                                       required>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" id="confirmPassMsg">
                        <div class="form-control-feedback">
                            <span class="text-danger align-middle">
                                <i class="fa fa-close"> Please enter the same password again</i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success">
                            <i class="fa fa-user-plus"></i> Register</button>
                    </div>
                </div>
            </form>
        </div>
        <script>
            $(document).ready(() => {
                $("#confirmPassMsg").hide();
            });
            function validate() {
                var validated;
                validated = $("#email")[0].checkValidity() && $("#name")[0].checkValidity();
                if ($("#password")[0].checkValidity() && $("#password-confirmation")[0].checkValidity()) {
                    if ($("#password").val() == $("#password-confirmation").val()) {
                        validated = validated && true;
                        $("#confirmPassMsg").hide();
                    } else {
                        validated = validated && false;
                        $("#confirmPassMsg").show();
                    }
                } else {
                    validated = validated && false;
                }
                return validated;
            }
        </script>
    </body>

</html>