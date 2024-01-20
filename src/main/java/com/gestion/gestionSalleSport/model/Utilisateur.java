package com.gestion.gestionSalleSport.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="utilisateur")
public class Utilisateur  {
	
	public Utilisateur(int utilisateurid, String utilisateurfirstname, String utilisateurlastname,
			String utilisateuremail, String utilisateurpassword ,boolean isAdmin ) {
		super();
		this.utilisateurid = utilisateurid;
		this.utilisateurfirstname = utilisateurfirstname;
		this.utilisateurlastname = utilisateurlastname;
		this.utilisateuremail = utilisateuremail;
		this.utilisateurpassword = utilisateurpassword;
		this.isAdmin=isAdmin;
	}

	public int getUtilisateurid() {
		return utilisateurid;
	}

	public String getUtilisateurfirstname() {
		return utilisateurfirstname;
	}

	public void setUtilisateurfirstname(String utilisateurfirstname) {
		this.utilisateurfirstname = utilisateurfirstname;
	}

	public String getUtilisateurlastname() {
		return utilisateurlastname;
	}

	public void setUtilisateurlastname(String utilisateurlastname) {
		this.utilisateurlastname = utilisateurlastname;
	}

	

	public String getUtilisateuremail() {
		return utilisateuremail;
	}

	public void setUtilisateuremail(String utilisateuremail) {
		this.utilisateuremail = utilisateuremail;
	}

	public String getUtilisateurpassword() {
		return utilisateurpassword;
	}

	public void setUtilisateurpassword(String utilisateurpassword) {
		this.utilisateurpassword = utilisateurpassword;
	}

	public void setUtilisateurid(int utilisateurid) {
		this.utilisateurid = utilisateurid;
	}

	public Utilisateur() {
	
	}

	@Id
	@Column(name="utilisateur_id", length=45)
	private int utilisateurid;
	
	@Column(name="utilisateur_firstname", length=255)
	private String utilisateurfirstname;
  
	@Column(name="utilisateur_lastname", length=255)
	private String utilisateurlastname;
	
	@Column(name="utilisateur_email", length=255)
	private String utilisateuremail;
	
	@Column(name="utilisateur_password", length=255)
	private String utilisateurpassword;
	
	@Column(name="isAdmin")
	private boolean isAdmin;

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
}
