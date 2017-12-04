package fr.afpa.projetx.service;

import fr.afpa.projetx.DAO.RoleDAO;
import fr.afpa.projetx.models.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleDAO roleDAO;

    @Override
    public void addRole(Role role) {
        roleDAO.addRole(role);
    }

    @Override
    public void updateRole(Role role) {
        roleDAO.updateRole(role);
    }

    @Override
    public Role getRole(String type) {
        return roleDAO.getRole(type);
    }
}
