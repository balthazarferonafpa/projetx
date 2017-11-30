package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Role;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("RoleDao")
@Transactional
public class RoleDAOImpl extends AbstractDao<Integer, Role> implements RoleDAO {
    @Override
    public void addRole(Role role) {
        getSession().persist(role);
    }

    @Override
    public void updateRole(Role role) {
        getSession().update(role);
    }
}
