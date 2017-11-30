package fr.afpa.projetx.service;

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
}
