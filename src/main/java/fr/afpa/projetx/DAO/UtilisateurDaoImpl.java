package fr.afpa.projetx.DAO;


import fr.afpa.projetx.models.Utilisateur;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import org.hibernate.Query;


@Repository("UtilisateurDao")
@Transactional
public class UtilisateurDaoImpl extends AbstractDao<Integer, Utilisateur> implements UtilisateurDao {

    static final Logger logger = LoggerFactory.getLogger(UtilisateurDaoImpl.class);

    public Utilisateur findById(long id) {
        Utilisateur utilisateur = getByKey((int) id);
      
        return utilisateur;
    }

    
        public void save(Utilisateur utilisateur) {
        persist(utilisateur);
    }

   
    public List<Utilisateur> findAllUtilisateurs() {
    	Query query = getSession().createQuery(
                "from Utilisateur");
        
        @SuppressWarnings("unchecked")
		List<Utilisateur> users = (List<Utilisateur>) query.list();
        return users;
    	
    	
    }


}
