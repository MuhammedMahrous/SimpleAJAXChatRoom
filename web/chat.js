$(document).ready(function () {
    var username = $("#username").val();
    $("#sendMsg").click(function () {
        var message = $("#message").val();
        if (username == undefined || message == undefined) {
            alert("Enter your username and message before sending!!");
        } else {
            var serverUrl = "MessagesServlet?username=" + username + "&message=" + message;
            $.ajax({url: serverUrl, success: function (result) {
                    console.log("Successfully sent the message");
                }, error: function (jqXHR, textStatus, errorThrown) {
                    console.log("ERROR CONNECTING TO THE SERVER");
                }});
        }
    });

    setInterval(() => {
        $.post("MessagesServlet", (data) => {
            $("#messages").empty();
            var messages = JSON.parse(data);
            messages.forEach(msg => {
                $("#messages").append(
                        `                <tr>
                    <td>
                     ` + msg.sender +
                        `</td>
                    <td>` +
                        msg.text +
                        `</td>
                </tr>`
                        );
            });
        });
    }, 300);

    setInterval(() => {
        $.post("Users", (data) => {
            $("#users").empty();
            var users = JSON.parse(data);
            users.forEach(user => {
                $("#users").append(
                        `                <tr>
                    <td>
                     ` + user.username +
                        `</td>
                    <td>` +
                        user.status +
                        `</td>
                </tr>`
                        );
            });
        });
    }, 300);
});