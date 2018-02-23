var username;

function SaveUserName() {
    username = $("#username").val();
    $("#username").prop('disabled', true);
    $("#saveBtn").prop('disabled', true);
}
$(document).ready(function () {
    $("#sendMsg").click(function () {
        var message = $("#message").val();
        if (username == undefined || message == undefined) {
            alert("Enter your username and message before sending!!");
        } else {
            var serverUrl = "MessagesServlet?username=" + username + "&message=" + message;
            $.ajax({url: serverUrl, success: function (result) {
                    console.log("Successfully sent the message");
                },error: function (jqXHR, textStatus, errorThrown) {
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
});