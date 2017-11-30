package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Avatar;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("AvatarDao")
@Transactional
public class AvatarDAOImpl extends AbstractDao<Integer, Avatar> implements AvatarDAO {


    @Override
    public void createAvatar(Avatar avatar) {
        getSession().persist(avatar);
    }

    @Override
    public void updateAvatar(Avatar avatar) {
        getSession().update(avatar);
    }
}
