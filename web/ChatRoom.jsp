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
            <nav class="navbar navbar-inverse bg-inverse">
                <a class="navbar-brand" href="#">Java ChatRoom</a>
            </nav>
            <div class="row">
                <div class="col-4 offset-4">
                    <div class="form-group">
                        <label for="username" class="form-label" style="margin-top: 2px">Username</label>
                        <input type="text" name="username" id="username" class="form-control">
                        <input type="button" value="Save" style="margin-top: 2px" class="btn btn-md btn-success" onclick="SaveUserName()" id="saveBtn">
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- <div class="col-4 offset-4 container" id="messages" style="border-color: black;border-radius: 30px">

        </div> -->
                <div class="col-sm-4 offset-4">
                    <table class="table">
                        <thead>
                            <th>Sender</th>
                            <th>Body</th>
                        </thead>
                        <tbody id="messages">

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 offset-4">
                    <input type="text" name="message" id="message" class="form-control">
                </div>
                <div class="col-sm-1">
                    <button class="btn btn-md btn-success" id="sendMsg">Send</button>
                </div>
            </div>
        </body>

        </html>