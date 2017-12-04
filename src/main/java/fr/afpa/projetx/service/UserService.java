package fr.afpa.projetx.service;

import fr.afpa.projetx.DAO.DAOException;
import fr.afpa.projetx.models.User;
import org.springframework.stereotype.Repository;

/**
 * Spring Data JPA repository for the User entity.
 */
@SuppressWarnings("unused")
@Repository
public interface UserService {

    public void createUser(User user);
    public void updateUser(User user);
    public User findByEmail(String email);
    public int verifierEmail(String email) throws DAOException;
}
