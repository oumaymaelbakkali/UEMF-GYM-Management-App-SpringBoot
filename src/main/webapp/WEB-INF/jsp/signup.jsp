<!DOCTYPE html>
<html lang="en">
<head>
    <title>UEMF GYM</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <style media="screen">
        *,
        *:before,
        *:after{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            background-color: #080710;
        }
        .te{
            padding: 5px 5px 5px 5px;
            color: #eaf0fb;
            text-align: center;
            font-size: 18px;
            font-weight: 600;
        }
        .background{
            background-image: url('resources/images/hero-bg.jpg');
            background-size: cover;
            background-position: top;
            background-repeat: no-repeat;
            vertical-align: middle;
            min-height: 100vh;
            position: relative;
        }
        form{
            height: 600px;
            width: 400px;
            background-color: rgba(255,255,255,0.13);
            position: absolute;
            transform: translate(-50%,-50%);
            top: 50%;
            left: 50%;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255,255,255,0.1);
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            padding: 50px 35px;
        }form *{
            font-family: 'Poppins',sans-serif;
            color: #ffffff;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }
        form h3{
            font-size: 20px;
            font-weight: 300;
            line-height: 20px;
            text-align: center;
        }
        label{
            display: block;
            margin-top: 10px;
            font-size: 16px;
            font-weight: 500;
        }
        input{
            display: block;
            height: 40px;
            width: 100%;
            background-color: rgba(255,255,255,0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 5px;
            font-size: 14px;
            font-weight: 300;
        }
        ::placeholder{
            color: #e5e5e5;
        }
        button{
            margin-top: 30px;
            width: 100%;
            background-color: #ffffff;
            color: #080710;
            padding: 5px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
          
        }
        .social{
            margin-top: 5px;
        }
        .social div{
            background: red;
            border-radius: 3px;
            padding: 5px 10px 10px 5px;
            background-color: rgba(255,255,255,0.27);
            color: #eaf0fb;
            text-align: center;
            margin-top: 5px;
            width: 100%;
            margin-bottom: 20px;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
        }
        .social div:hover{
            background-color: rgba(255,255,255,0.47);
        }
    </style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="/SignUp" method="post">
        <h3>Sign Up Here</h3>
<!-- Utilisation de Thymeleaf pour afficher le message d'alerte -->
<script th:if="${param.alert}" th:inline="javascript">
    /*<![CDATA[*/
    document.addEventListener('DOMContentLoaded', function() {
        var alertMessage = "${param.alert}";
        if (alertMessage !== "") {
            // If alert is not empty, display message in h1
            var h1Element = document.getElementById("alertMessage");
            h1Element.innerHTML = alertMessage;
        }
    });
    /*]]>*/
</script>

<!-- Place this where you want the message to be displayed -->
<h7 style="color:red; text-align:center" id="alertMessage"></h7>

        <label for="id">ID</label>
<input type="number" placeholder="ID your Card" id="id" name="id">


        <div style="display: flex; justify-content: space-between;">
            <div style="width: 48%;">
                <label for="firstName">First Name</label>
                <input type="text" placeholder="First Name" id="firstName" name="firstName">
            </div>
            <div style="width: 48%;">
                <label for="lastName">Last Name</label>
                <input type="text" placeholder="Last Name" id="lastName" name="lastName">
            </div>
        </div>

        <label for="email">Email</label>
        <input type="email" placeholder="Email" id="email" name="email">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" name="password">

        <button type="submit">Sign Up</button>
        <p class="te" >__Or__</p>
       
        <div class="social">
            <div class="go"><a href="/login">Log In</a></div>
        </div>
    </form>
</body>
</html>
