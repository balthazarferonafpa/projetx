package fr.afpa.projetx.service;

import fr.afpa.projetx.models.Avatar;
import org.springframework.stereotype.Repository;

/**
 * Spring Data JPA repository for the Avatar entity.
 */
@SuppressWarnings("unused")
@Repository
public interface AvatarService {

    public void createAvatar(Avatar avatar);
    public void updateAvatar(Avatar avatar);

}
