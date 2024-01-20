package com.gestion.gestionSalleSport.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gestion.gestionSalleSport.model.Utilisateur;
import com.gestion.gestionSalleSport.repository.UtilisateurRepo;
import com.gestion.gestionSalleSport.service.UtilisateurService;

@Service
public class UtilisateurIMPL implements UtilisateurService{
	
	@Autowired
    private UtilisateurRepo utilisateurRepo;
	
	


	@Override
	public boolean addUtilisateur(Utilisateur utilisateur) {
		utilisateurRepo.save(utilisateur);
		  return true;
	}




	@Override
	public boolean verifierLogin(String email, String password) {
		Utilisateur utilisateur = utilisateurRepo.findByUtilisateuremail(email);

        // Vérifiez si l'utilisateur existe et si le mot de passe correspond
        if (utilisateur != null && utilisateur.getUtilisateurpassword().equals(password)) {
            // Connexion réussie
            return true;
        } else {
            // Connexion échouée
            return false;
        }
		
	}




	@Override
	public boolean isEmailOrIdAlreadyUsed(String email, int id) {
        // Check if the email is already in use
        boolean isEmailUsed = utilisateurRepo.existsByUtilisateuremail(email);

        // If you also want to check for ID, you can modify the logic accordingly
        boolean isIdUsed = utilisateurRepo.existsByUtilisateurid(id);

        // Return true if either the email or ID is already in use
        return isEmailUsed && isIdUsed;
    }




	@Override
	public Utilisateur getUserByEmail(String email) {
		Utilisateur utilisateur = utilisateurRepo.findByUtilisateuremail(email);
		return  utilisateur;
	}




	@Override
	public Utilisateur getUserById(int id) {
		Utilisateur utilisateur = utilisateurRepo.findUtilisateursByutilisateurid(id);
		return  utilisateur;
	}




	
	
   

}

