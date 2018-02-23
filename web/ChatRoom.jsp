<%-- 
    Document   : ChatRoom
    Created on : Feb 18, 2018, 3:21:12 PM
    Author     : mahrous
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Chat Room</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/tether.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="chat.js"></script>
    </head>

    <body>
        <input hidden id="username" value="${sessionScope['username']}">
        <nav class="navbar navbar-inverse bg-inverse navbar-toggleable-md">
            <a class="navbar-brand" href="#">Java ChatRoom</a>
            <div class="collapse navbar-collapse">
                <form class="form-inline" method="GET" action="Login">
                    <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
                </form>
            </div>
        </nav>
        <div class="row">
            <div class="col-4 offset-4">
                <h1>Welcome ${sessionScope['username']}</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 offset-2">
                <table class="table">
                    <thead>
                    <th>Sender</th>
                    <th>Body</th>
                    </thead>
                    <tbody id="messages">

                    </tbody>
                </table>
            </div>
            <div class="col-sm-2 offset-4">
                <h4>Users</h4>
                <table class="table">
                    <thead>
                    <th>Username</th>
                    <th>Status</th>
                    </thead>
                    <tbody id="users">

                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 offset-2">
                <input type="text" name="message" id="message" class="form-control">
            </div>
            <div class="col-sm-1">
                <button class="btn btn-md btn-success" id="sendMsg">Send</button>
            </div>
        </div>
    </body>

</html>