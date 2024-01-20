package com.gestion.gestionSalleSport.service;
import java.util.List;

import com.gestion.gestionSalleSport.model.Reservation;


public interface ReservationService {

	void saveReservation(Reservation reservation);

	List<Reservation> getReservationsByUserid(int id);

	List<Reservation> getAllReservations();

	void deleteReservation(int reservationId);

	void updateReservation(int reservationId, Reservation updatedReservation);

	
	

}
