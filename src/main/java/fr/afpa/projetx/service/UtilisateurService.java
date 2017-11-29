package fr.afpa.projetx.service;

import fr.afpa.projetx.models.Utilisateur;

import java.util.List;

public interface UtilisateurService {


    Utilisateur findById(long id);

    void saveUtilisateur(Utilisateur user);

    List<Utilisateur> findAllUtilisateurs();

}
