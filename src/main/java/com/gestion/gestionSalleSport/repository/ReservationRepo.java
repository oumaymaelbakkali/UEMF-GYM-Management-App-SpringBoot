package com.gestion.gestionSalleSport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gestion.gestionSalleSport.model.Reservation;

import java.util.List;

@Repository
public interface ReservationRepo extends JpaRepository<Reservation, Integer> {

	List<Reservation> findByUtilisateurUtilisateurid(int utilisateurId);
}
