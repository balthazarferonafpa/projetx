package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Avatar;

public class AvatarRepositoryImpl extends AbstractDao implements AvatarRepository {


    @Override
    public void createAvatar(Avatar avatar) {
        getSession().persist(avatar);
    }

    @Override
    public void updateAvatar(Avatar avatar) {
        getSession().update(avatar);
    }
}
