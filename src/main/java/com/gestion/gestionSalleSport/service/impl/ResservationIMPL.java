package com.gestion.gestionSalleSport.service.impl;
import  com.gestion.gestionSalleSport.service.ReservationService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gestion.gestionSalleSport.model.Reservation;
import com.gestion.gestionSalleSport.model.Utilisateur;
import com.gestion.gestionSalleSport.repository.ReservationRepo;
import com.gestion.gestionSalleSport.repository.UtilisateurRepo;

@Service
public class ResservationIMPL implements ReservationService {
	
	@Autowired
    private ReservationRepo reservationRepo;
	@Autowired
    private UtilisateurRepo utilisateurRepo;

	@Override
    public void saveReservation(Reservation reservation) {
        // Assuming you have a repository for Reservation
        reservationRepo.save(reservation);
    }

	@Override
	public List<Reservation> getReservationsByUserid(int id) {
		// TODO Auto-generated method stub
		return reservationRepo.findByUtilisateurUtilisateurid(id);
	}

	@Override
	public List<Reservation> getAllReservations() {
		List<Reservation> reservations = reservationRepo.findAll();
		
		 return reservations;

	}

	@Override
	public void deleteReservation(int reservationId) {
		 reservationRepo.deleteById(reservationId);
		
	}

	
	@Override
    public void updateReservation(int reservationId, Reservation updatedReservation) {
        
        Optional<Reservation> optionalReservation = reservationRepo.findById(reservationId);

        // Vérifier si la réservation existe
        if (optionalReservation.isPresent()) {
            Reservation existingReservation = optionalReservation.get();

           
            existingReservation.setDateReservation(updatedReservation.getDateReservation());
            existingReservation.setHeureDebut(updatedReservation.getHeureDebut());
            existingReservation.setHeureFin(updatedReservation.getHeureFin());

            reservationRepo.save(existingReservation);
        } else {
           
        }
    }

  

	
	



}
