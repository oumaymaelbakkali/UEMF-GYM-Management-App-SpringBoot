package com.gestion.gestionSalleSport.service;


import com.gestion.gestionSalleSport.model.Utilisateur;

public interface UtilisateurService {
     boolean addUtilisateur(Utilisateur utilisateur);

	boolean verifierLogin(String email, String password);

	boolean isEmailOrIdAlreadyUsed(String email, int id);

	Utilisateur getUserByEmail(String email);

	Utilisateur getUserById(int idUtilisateur);


}
