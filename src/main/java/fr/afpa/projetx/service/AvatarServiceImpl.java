package fr.afpa.projetx.service;

import fr.afpa.projetx.DAO.AvatarDAO;
import fr.afpa.projetx.models.Avatar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("avatarService")
@Transactional
public class AvatarServiceImpl implements AvatarService {

    @Autowired
    AvatarDAO avatarDAO;


    @Override
    public void createAvatar(Avatar avatar) {
        avatarDAO.createAvatar(avatar);
    }

    @Override
    public void updateAvatar(Avatar avatar) {
        avatarDAO.updateAvatar(avatar);
    }
}
