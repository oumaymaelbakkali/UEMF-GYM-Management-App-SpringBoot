package com.gestion.gestionSalleSport.controller;
import com.gestion.gestionSalleSport.model.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gestion.gestionSalleSport.model.Utilisateur;
import com.gestion.gestionSalleSport.service.ReservationService;
import com.gestion.gestionSalleSport.service.UtilisateurService;



@Controller

public class UtilisateurController {
	
   @Autowired
   private UtilisateurService utilisateurService;
   @Autowired
   private ReservationService reservationService;
   
   
   @GetMapping("/login")
   public String viewLoginPage() {
       return "login"; 
   }
   
   @PostMapping("/login")
   public String postLoginPage(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
       boolean loginResult = utilisateurService.verifierLogin(email, password);

       if (loginResult) {
           Utilisateur user = utilisateurService.getUserByEmail(email);
           System.out.println(user);
           if (user.isAdmin()==true) {
        	   return "redirect:/profileAdmin/" + user.getUtilisateurid();
           }else {
        	   return "redirect:/profile/" + user.getUtilisateurid();
           }
    
           
       } else {
           String alertMessage = "Email or Password incorrect";
           return "redirect:/login?alert=" + alertMessage;
       }
   }

   @GetMapping("/profile/{id}")
   public String viewProfilePage(@PathVariable int id, Model model) {
       // Retrieve the user based on the provided id
	   Utilisateur user = utilisateurService.getUserById(id);
        
       // Add the user to the model
       model.addAttribute("user", user);
       System.out.println(user.getUtilisateuremail());

       return "profile";
   }
   
   @GetMapping("/profileAdmin/{id}")
   public String viewProfileAdminPage(@PathVariable int id, Model model) {
       // Retrieve the user based on the provided id
	   Utilisateur user = utilisateurService.getUserById(id);
       List<Reservation> reservations=reservationService.getAllReservations();

       // Add the user to the model
       model.addAttribute("reservations", reservations);
       model.addAttribute("user", user);
       System.out.println(user.getUtilisateuremail());

       return "profileAdmin";
   }


   
   @GetMapping("/SignUp")
   public String viewSignUpPage() {
       return "signup"; 
   }
   
  

   
   @PostMapping("/SignUp")
   public String saveUtilisateur(
           @RequestParam("id") int id,
           @RequestParam("firstName") String firstName,
           @RequestParam("lastName") String lastName,
           @RequestParam("email") String email,
           @RequestParam("password") String password,
           
           Model model) {

       // Check if the email or id is already in use
       if (utilisateurService.isEmailOrIdAlreadyUsed(email, id)) {
           
    	   String alertMessage = "Email or Id already in use";
           return "redirect:/SignUp?alert=" + alertMessage;
       }

       
       Utilisateur utilisateur = new Utilisateur();
       utilisateur.setUtilisateurid(id);
       utilisateur.setUtilisateurfirstname(firstName);
       utilisateur.setUtilisateurlastname(lastName);
       utilisateur.setUtilisateuremail(email);
       utilisateur.setUtilisateurpassword(password);
       utilisateur.setAdmin(false);

       boolean registrationResult = utilisateurService.addUtilisateur(utilisateur);
       if (registrationResult) {
           
           return "redirect:/login";
       } else {
          
    	   String alertMessage = "erreur somthing is wrong";
           return "redirect:/SignUp?alert=" + alertMessage;
       }

   
   }



   
  
  
   


}
