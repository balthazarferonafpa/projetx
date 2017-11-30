package fr.afpa.projetx.service;

import fr.afpa.projetx.models.Role;
import org.springframework.stereotype.Repository;


/**
 * Spring Data JPA repository for the Role entity.
 */
@SuppressWarnings("unused")
@Repository
public interface RoleService {

    public void addRole(Role role);
    public void updateRole(Role role);

}
