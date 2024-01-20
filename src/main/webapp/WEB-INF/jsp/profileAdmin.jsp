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
                   

                    

                </ul>

                <ul class="social-icon ml-lg-3">
                
                    <li><a href="/" class="fa fa-sign-out">${user.utilisateurfirstname}</a></li>
                    
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
            

            
             <th>Name of Reservateur</th>
            <th>ID Card of Reservateur</th>
            <th>Actions</th>
            
            
        </tr>
    </thead>
    <tbody>
        <c:forEach var="reservation" items="${reservations}">
            <tr>
               
                <td class="bg-light">${reservation.dateReservation}</td>
                <td class="bg-light">${reservation.heureDebut}</td>
                <td class="bg-light">${reservation.heureFin}</td>
                <td class="bg-light">${reservation.utilisateur.utilisateurfirstname} ${reservation.utilisateur.utilisateurlastname}</td>
                <td class="bg-light">${reservation.utilisateur.utilisateurid}</td>
               <td class="bg-light">
                    <div class="btn-group">
                        <a href="#" class=" btn btn-success" data-toggle="modal" data-target="#reservationModal"  >Edit</a>
                        <a href="/delete/${user.utilisateurid}/${reservation.reservationId}" class=" btn btn-danger">Delete</a>
                    </div>
                </td>
            </tr>
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
                <form class="reservation-form webform" method="post" action="/edit/${user.utilisateurid}/${reservation.reservationId}">
                    <div class="form-group">
                        <label for="reservation-date">Date:</label>
                        <input type="date" class="form-control" name="dateReservation" value=${reservation.dateReservation} required>
                    </div>
                     <div class="form-group">
                      
                        <input type="hidden" class="form-control" value="${user.utilisateurid }" name="UtilisateurId" required>
                    </div>

                    <div class="form-group">
                        <label for="start-time">Start Time:</label>
                        <input type="time" class="form-control" name="heureDebut" value=${reservation.heureDebut}  required>
                    </div>

                    <div class="form-group">
                        <label for="end-time">End Time:</label>
                        <input type="time" class="form-control" name="heureFin" value=${reservation.heureFin} required>
                    </div>



                   

                    
                   

                  <button type="submit" class="form-control mt-2" id="submit-button" name="submit">Update Reservation</button>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>
                                
        </c:forEach>
    </tbody>
                                
  
</table>
    
                </div>
            </div>
        </div>
    </div>
</section>

     

 
  
   

     <!-- SCRIPTS -->
     <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/smoothscroll.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>
</html>