package com.gestion.gestionSalleSport.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

import java.util.Date;

@Entity
@Table(name = "reservation")
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_id")
    private int reservationId;

    @ManyToOne
    @JoinColumn(name = "utilisateur_id")
    private Utilisateur utilisateur;

    @Column(name = "date_reservation")
    @Temporal(TemporalType.DATE)
    private Date dateReservation;

    @Column(name = "heure_debut")
    @Temporal(TemporalType.TIME)
    private Date heureDebut;

    @Column(name = "heure_fin")
    @Temporal(TemporalType.TIME)
    private Date heureFin;

	public Reservation(int reservationId, Utilisateur utilisateur, Date dateReservation, Date heureDebut,
			Date heureFin) {
		super();
		this.reservationId = reservationId;
		this.utilisateur = utilisateur;
		this.dateReservation = dateReservation;
		this.heureDebut = heureDebut;
		this.heureFin = heureFin;
	}

	public Reservation() {
		super();
		
	}

	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public Date getDateReservation() {
		return dateReservation;
	}

	public void setDateReservation(Date dateReservation) {
		this.dateReservation = dateReservation;
	}

	public Date getHeureDebut() {
		return heureDebut;
	}

	public void setHeureDebut(Date heureDebut) {
		this.heureDebut = heureDebut;
	}

	public Date getHeureFin() {
		return heureFin;
	}

	public void setHeureFin(Date heureFin) {
		this.heureFin = heureFin;
	}

  
}
