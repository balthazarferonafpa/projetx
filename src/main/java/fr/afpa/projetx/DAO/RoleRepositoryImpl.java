package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Role;

public class RoleRepositoryImpl extends AbstractDao implements RoleRepository {
    @Override
    public void addRole(Role role) {
        getSession().persist(role);
    }

    @Override
    public void updateRole(Role role) {
        getSession().update(role);
    }
}
