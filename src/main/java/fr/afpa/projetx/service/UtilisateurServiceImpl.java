package fr.afpa.projetx.service;

import fr.afpa.projetx.DAO.UtilisateurDao;
import fr.afpa.projetx.models.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService")
@Transactional
public class UtilisateurServiceImpl implements UtilisateurService {

    @Autowired
    private UtilisateurDao dao;

   
 
    public void saveUtilisateur(Utilisateur utilisateur) {
        utilisateur.setPassword((utilisateur.getPassword()));
        dao.save(utilisateur);
    }




    public List<Utilisateur> findAllUtilisateurs() {
        return dao.findAllUtilisateurs();
    }




	@Override
	public Utilisateur findById(long id) {		 
        return (Utilisateur) dao.findById(id); 
	}

  

}