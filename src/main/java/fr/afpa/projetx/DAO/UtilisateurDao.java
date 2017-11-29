package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Utilisateur;

import java.util.List;

public interface UtilisateurDao {

    Utilisateur findById(long id);

    void save(Utilisateur user);

    public List<Utilisateur> findAllUtilisateurs();

}
