package fr.afpa.projetx.DAO;

import org.springframework.stereotype.Repository;
import fr.afpa.projetx.models.Role;


/**
 * Spring Data JPA repository for the Role entity.
 */
@SuppressWarnings("unused")
@Repository
public interface RoleDAO {

    public void addRole(Role role);
    public void updateRole(Role role);
    public Role getRole(String type);

}
