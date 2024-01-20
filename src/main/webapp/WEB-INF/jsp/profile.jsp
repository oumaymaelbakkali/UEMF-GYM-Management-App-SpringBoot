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
                        <a href="/profile/${user.utilisateurid}" class="nav-link smoothScroll">Home</a>
                    </li>

                    <li class="nav-item">
                        <a href="/list/${user.utilisateurid}" class="nav-link smoothScroll">Reservations</a>
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
                    <li><a href="https://fb.com/tooplate" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-instagram"></a></li>
                </ul>
            </div>

        </div>
    </nav>


     <!-- HERO -->
     <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

            <div class="bg-overlay"></div>

               <div class="container">
                    <div class="row">

                         <div class="col-lg-8 col-md-10 mx-auto col-12">
                              <div class="hero-text mt-5 text-center">

                                    <h6 data-aos="fade-up" data-aos-delay="300">new way to build a healthy lifestyle!</h6>

                                    <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">Upgrade your body at UEMF GYM</h1>

                           
                                  <a href="#" class="btn custom-btn bordered mt-3" data-toggle="modal" data-target="#reservationModal" data-aos="fade-up" data-aos-delay="700">Get New Reservation</a>

                                <div class="modal fade" id="reservationModal" tabindex="-1" role="dialog" aria-labelledby="reservationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
               <h4 class="modal-title mb-4 " id="reservationModalLabel">Reservation Form</h4>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="reservation-form webform" method="post" action="/Reserver">
                    <div class="form-group">
                        <label for="reservation-date">Date:</label>
                        <input type="date" class="form-control" name="dateReservation" required>
                    </div>
                     <div class="form-group">
                      
                        <input type="hidden" class="form-control" value="${user.utilisateurid }" name="UtilisateurId" required>
                    </div>

                    <div class="form-group">
                        <label for="start-time">Start Time:</label>
                        <input type="time" class="form-control" name="heureDebut" name="idUtilisateur" required>
                    </div>

                    <div class="form-group">
                        <label for="end-time">End Time:</label>
                        <input type="time" class="form-control" name="heureFin" required>
                    </div>



                   

                    
                   

                  <button type="submit" class="form-control mt-2" id="submit-button" name="submit">Submit Reservation</button>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>
                                   
                              </div>
                         </div>

                    </div>
               </div>
     </section>


   


     <!-- ABOUT -->
     <section class="about section" id="about">
               <div class="container">
                    <div class="row">

                           <div class="mt-lg-5 mb-lg-0 mb-4 col-lg-5 col-md-10 mx-auto col-12">
                                <h2 class="mb-4" data-aos="fade-up" data-aos-delay="300">Hello, we are UEMF GYM</h2>

                                <p data-aos="fade-up" data-aos-delay="400"></p>

                                <p data-aos="fade-up" data-aos-delay="500"><a rel="nofollow" href="https://www.tooplate.com/view/2119-gymso-fitness" target="_parent"></a> <a rel="nofollow" href="https://www.tooplate.com/contact" target="_parent">contact Our Coach</a> </p>

                            </div>
                            <div class="ml-lg-auto col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="700">
                                <div class="team-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/team/tem2.jpg" class="img-fluid" alt="Trainer">

                                    <div class="team-info d-flex flex-column">

                                        <h3>hassan ben Omar</h3>
                                        <span>Body trainer</span>

                                        <ul class="social-icon mt-3">
                                            <li><a href="#" class="fa fa-twitter"></a></li>
                                            <li><a href="#" class="fa fa-instagram"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="800">
                                <div class="team-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/team/team-image.jpg" class="img-fluid" alt="Trainer">

                                    <div class="team-info d-flex flex-column">

                                        <h3>Sarah Ben Jelloun </h3>
                                        <span>yoga Instructor</span>

                                        <ul class="social-icon mt-3">
                                            <li><a href="#" class="fa fa-instagram"></a></li>
                                            <li><a href="#" class="fa fa-facebook"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                    </div>
               </div>
     </section>


     <!-- CLASS -->
     <section class="class section" id="class">
               <div class="container">
                    <div class="row">

                            <div class="col-lg-12 col-12 text-center mb-5">
                                <h6 data-aos="fade-up">Get A Perfect Body</h6>

                                <h2 data-aos="fade-up" data-aos-delay="200">Our Training Classes</h2>
                             </div>

                            <div class="col-lg-4 col-md-6 col-12" data-aos="fade-up" data-aos-delay="400">
                                <div class="class-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/class/yoga-class.jpg" class="img-fluid" alt="Class">

                                    <div class="class-info">
                                        <h3 class="mb-1">Yoga</h3>

                                        <span><strong>Trained by</strong> - Bella</span>

                                        

                                       
                                    </div>
                                </div>
                            </div>

                            <div class="mt-5 mt-lg-0 mt-md-0 col-lg-4 col-md-6 col-12" data-aos="fade-up" data-aos-delay="500">
                                <div class="class-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/class/crossfit-class.jpg" class="img-fluid" alt="Class">

                                    <div class="class-info">
                                        <h3 class="mb-1">Areobic</h3>

                                        <span><strong>Trained by</strong> Sami</span>

                                        

                                        
                                    </div>
                                </div>
                            </div>

                            <div class="mt-5 mt-lg-0 col-lg-4 col-md-6 col-12" data-aos="fade-up" data-aos-delay="600">
                                <div class="class-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/class/cardio-class.jpg" class="img-fluid" alt="Class">

                                    <div class="class-info">
                                        <h3 class="mb-1">Cardio</h3>

                                        <span><strong>Trained by</strong> Salim</span>

                                       
                                    </div>
                                </div>
                            </div>

                    </div>
               </div>
     </section>


    

     <!-- CONTACT -->
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

    <!-- Modal -->
    <div class="modal fade" id="membershipForm" tabindex="-1" role="dialog" aria-labelledby="membershipFormLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">

        <div class="modal-content">
          <div class="modal-header">

            <h2 class="modal-title" id="membershipFormLabel">Membership Form</h2>

            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <div class="modal-body">
            <form class="membership-form webform" role="form">
                <input type="text" class="form-control" name="cf-name" placeholder="John Doe">

                <input type="email" class="form-control" name="cf-email" placeholder="Johndoe@gmail.com">

                <input type="tel" class="form-control" name="cf-phone" placeholder="123-456-7890" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>

                <textarea class="form-control" rows="3" name="cf-message" placeholder="Additional Message"></textarea>

                <button type="submit" class="form-control" id="submit-button" name="submit">Submit Button</button>

                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="signup-agree">
                    <label class="custom-control-label text-small text-muted" for="signup-agree">I agree to the <a href="#">Terms &amp;Conditions</a>
                    </label>
                </div>
            </form>
          </div>

          <div class="modal-footer"></div>

        </div>
      </div>
    </div>

     <!-- SCRIPTS -->
     <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/smoothscroll.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>
</html>