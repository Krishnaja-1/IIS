<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hello.net</title>
    <style>
        body {
            background-color: cyan;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: blue;
            width: 800px;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
        .time-bar {
            background-color: white;
            width: 800px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 5px;
            font-family: Arial, sans-serif;
            font-size: 24px;
        }
        .label {
            color: black;
            font-family: Arial, sans-serif;
            font-size: 24px;
            margin-right: 10px;
            text-align: center;
        }
        .welcome-heading {
            color: black;
            font-family: Arial, sans-serif;
            font-size: 50px;
            text-align: center;
            margin-bottom: 24px;
            position: absolute;
            top: 10%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1;
        }
        .Nano-box {
            color: white;
            font-family: Arial, sans-serif;
            font-size: 18px;
            margin-right: 10px;
            text-align: center;
        }
    </style>
    <script>
        function updateTime() {
            var timeElement = document.getElementById("time");
            var currentTime = new Date().toLocaleTimeString();
            timeElement.innerHTML = currentTime;
        }

        setInterval(updateTime, 1000); // Update time every second
    </script>
</head>
<body>
    <div class="welcome-heading">Welcome to appz clock</div>

    <div class="container">
        <img src="https://avatars.githubusercontent.com/u/52163541?s=200&v=4" alt="Appz Emblem">
        <h1 class="heading" style="color: white;">Appz Live Clock</h1>
        <h2 class="Nano-box" style="color: red;" > <p>Message: <%= System.Environment.GetEnvironmentVariable("NANO") %></p> </h2>
        <div class="time-bar">
            <span class="label">Current Time:</span>
            <span id="time"><%= DateTime.Now.ToString("HH:mm:ss") %></span>
        </div>
    </div>
</body>
</html>
