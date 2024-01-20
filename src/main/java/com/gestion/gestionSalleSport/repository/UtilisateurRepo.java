package com.gestion.gestionSalleSport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.gestion.gestionSalleSport.model.Utilisateur;

@EnableJpaRepositories
@Repository
public interface UtilisateurRepo extends JpaRepository<Utilisateur,Integer> {

	
	Utilisateur findByUtilisateuremail(String utilisateuremail);

	boolean existsByUtilisateuremail(String email);

	boolean existsByUtilisateurid(int id);

	Utilisateur findUtilisateursByutilisateurid(int utilisateurid);

	
	
}
