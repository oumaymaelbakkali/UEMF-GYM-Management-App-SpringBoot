<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

     <title>UEMF GYM</title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tooplate-gymso-style.css">

</head>
<body data-spy="scroll" data-target="#navbarNav" data-offset="50">

    <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">

            <a class="navbar-brand" href="index.html">UEMF Gym</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="/profile/${userId}" class="nav-link smoothScroll">Home</a>
                    </li>

                    <li class="nav-item">
                        <a href="/list/${userId}" class="nav-link smoothScroll">Reservations</a>
                    </li>

                    <li class="nav-item">
                        <a href="#class" class="nav-link smoothScroll">Classes</a>
                    </li>

                    <li class="nav-item">
                        <a href="#contact" class="nav-link smoothScroll">Contact</a>
                    </li>
                </ul>

                <ul class="social-icon ml-lg-3">
                
                    <li><a href="/" class="fa fa-sign-out">${user.utilisateurfirstname}</a></li>
                    <li><a href="" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-instagram"></a></li>
                </ul>
            </div>

        </div>
    </nav>


     <!-- HERO -->
<!-- HERO -->
<section class="hero d-flex flex-column justify-content-center align-items-center" id="home">
    <div class="bg-overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto col-12">
                <div class="hero-text mt-5 text-center">
    <table class="table table-bordered table-hover table-striped">
    <thead class="thead-light">
        <tr>
            
            <th>Date of Reservation </th>
            <th>Start Time</th>
            <th>End Time</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="reservation" items="${reservations}">
            <tr>
               
                <td class="bg-light">${reservation.dateReservation}</td>
                <td class="bg-light">${reservation.heureDebut}</td>
                <td class="bg-light">${reservation.heureFin}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
    
                </div>
            </div>
        </div>
    </div>
</section>

     <section class="contact section" id="contact">
          <div class="container">
               <div class="row">

                    <div class="ml-auto col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4 pb-2" data-aos="fade-up" data-aos-delay="200">Feel free to ask anything</h2>

                        <form action="#" method="post" class="contact-form webform" data-aos="fade-up" data-aos-delay="400" role="form">
                            <input type="text" class="form-control" name="cf-name" placeholder="Name">

                            <input type="email" class="form-control" name="cf-email" placeholder="Email">

                            <textarea class="form-control" rows="5" name="cf-message" placeholder="Message"></textarea>

                            <button type="submit" class="form-control" id="submit-button" name="submit">Send Message</button>
                        </form>
                    </div>

                    <div class="mx-auto mt-4 mt-lg-0 mt-md-0 col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4" data-aos="fade-up" data-aos-delay="600">Where you can <span>find us</span></h2>

                        <p data-aos="fade-up" data-aos-delay="800"><i class="fa fa-map-marker mr-1"></i> 2WVH+7R2, Rte Principale Fès Meknès, Fès</p>

                        <div class="google-map" data-aos="fade-up" data-aos-delay="900">
                           <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13223.838308848332!2d-5.0647199!3d34.044908!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda0200167cdd43d%3A0x89b0ef8e8740d496!2zVW5pdmVyc2l0w6kgRXVybyBNw6lkaXRlcnJhbsOpZW5uZSBkZSBGw6hz!5e0!3m2!1sfr!2sma!4v1705242280938!5m2!1sfr!2sma" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                    
               </div>
          </div>
     </section>


     <!-- FOOTER -->
     <footer class="site-footer">
          <div class="container">
               <div class="row">

                    <div class="ml-auto col-lg-4 col-md-5">
                        <p class="copyright-text">Copyright &copy; 2024 UEMF GYM
                        
                       
                    </div>

                    <div class="d-flex justify-content-center mx-auto col-lg-5 col-md-7 col-12">
                        <p class="mr-4">
                            <i class="fa fa-envelope-o mr-1"></i>
                            <a href="#">UemfGym@ueuromed.org</a>
                        </p>

                        <p><i class="fa fa-phone mr-1"></i> 0566775566</p>
                    </div>
                    
               </div>
          </div>
     </footer>

   

     <!-- SCRIPTS -->
     <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/smoothscroll.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>
</html>