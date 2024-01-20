<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Design by foolishdeveloper.com -->
    <title>UEMF GYM</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
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
    height: 520px;
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
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
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
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 20px;

}
.social div{
  background: red;
 
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
  margin-top: 10px;
    width: 100%;
    

   margin-bottom: 69px;
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
    <!-- Utilisation de Thymeleaf pour afficher le message d'alerte -->

    
    <form  action="/login" method="post">
        <h3>Login Here</h3>
<script th:if="${param.alert}" th:inline="javascript">
    /*<![CDATA[*/
    document.addEventListener('DOMContentLoaded', function() {
        if ("${param.alert}" !== "") {
            alert("${param.alert}");
        }
    });
    /*]]>*/
</script>


        <label for="username">Email</label>
        <input type="email" placeholder="Email" id="email" name="email">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" name="password">

        <button type="submit">Log In</button>
        <p class="te" >__Or__</p>
       
        <div class="social">
          <div class="go"><a href="/SignUp">Sign Up </a></div>
         
        </div>
    </form>
</body>
</html>
