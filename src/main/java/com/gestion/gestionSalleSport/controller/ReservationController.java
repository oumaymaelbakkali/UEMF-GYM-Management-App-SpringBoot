package com.gestion.gestionSalleSport.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gestion.gestionSalleSport.model.Reservation;
import com.gestion.gestionSalleSport.model.Utilisateur;
import com.gestion.gestionSalleSport.service.ReservationService;
import com.gestion.gestionSalleSport.service.UtilisateurService;

@Controller
public class ReservationController {
    @Autowired
    private UtilisateurService utilisateurService;
    @Autowired
    private ReservationService reservationService;
    @GetMapping("/")
    public String viewLoginPage() {
        return "welcome";
    }
    
    @GetMapping("/list/{id}")
    public String viewListPage(@PathVariable int id, Model model) {
        
 	   List<Reservation> reservations = reservationService.getReservationsByUserid(id);
        model.addAttribute("reservations", reservations);
        model.addAttribute("userId", id);
        System.out.println(reservations);

        return "list";
    }
    
    @GetMapping("/delete/{AdminId}/{reservationId}")
    public String deleteReservation(@PathVariable int reservationId,@PathVariable int AdminId) {
        // Call your service to delete the reservation by ID
        reservationService.deleteReservation(reservationId);

        // Redirect to the reservation list page or wherever appropriate
        return "redirect:/profileAdmin/"+AdminId;
    }
    @PostMapping("/edit/{AdminId}/{reservationId}")
    public String updateReservation(@PathVariable int AdminId,
                                    @PathVariable int reservationId,
                                    @RequestParam("dateReservation") String dateReservation,
                                    @RequestParam("heureDebut") String heureDebut,
                                    @RequestParam("heureFin") String heureFin) {
        
        
        Reservation updatedReservation = new Reservation();
       

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date parsedDate;

        try {
            parsedDate = dateFormat.parse(dateReservation);
        } catch (ParseException e) {
            return "error-page";
        }
        Date sqlDate = new Date(parsedDate.getTime());
        updatedReservation.setDateReservation(sqlDate);

        SimpleDateFormat heureFormat = new SimpleDateFormat("HH:mm");
        java.util.Date parsedHeureDebut;
        java.util.Date parsedHeureFin;

        try {
            parsedHeureDebut = heureFormat.parse(heureDebut);
            parsedHeureFin = heureFormat.parse(heureFin);
        } catch (ParseException e) {
            return "error-page";
        }
        updatedReservation.setHeureDebut(parsedHeureDebut);
        updatedReservation.setHeureFin(parsedHeureFin);
        
        reservationService.updateReservation(reservationId, updatedReservation);

        return "redirect:/profileAdmin/" + AdminId;
    }

    @PostMapping("/Reserver")
    public String saveReservation(
            @RequestParam("UtilisateurId") int idUtilisateur,
            @RequestParam("dateReservation") String dateReservation,
            @RequestParam("heureDebut") String heureDebut,
            @RequestParam("heureFin") String heureFin,
            Model model) {

        Utilisateur user = utilisateurService.getUserById(idUtilisateur);
        Reservation reservation = new Reservation();
        reservation.setUtilisateur(user);

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date parsedDate;

        try {
            parsedDate = dateFormat.parse(dateReservation);
        } catch (ParseException e) {
            return "error-page";
        }
        Date sqlDate = new Date(parsedDate.getTime());
        reservation.setDateReservation(sqlDate);

        SimpleDateFormat heureFormat = new SimpleDateFormat("HH:mm");
        java.util.Date parsedHeureDebut;
        java.util.Date parsedHeureFin;

        try {
            parsedHeureDebut = heureFormat.parse(heureDebut);
            parsedHeureFin = heureFormat.parse(heureFin);
        } catch (ParseException e) {
            return "error-page";
        }
        reservation.setHeureDebut(parsedHeureDebut);
        reservation.setHeureFin(parsedHeureFin);
        reservationService.saveReservation(reservation);
        return "redirect:/list/"+ idUtilisateur;
    }
}
