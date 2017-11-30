package fr.afpa.projetx.DAO;

import org.springframework.stereotype.Repository;
import fr.afpa.projetx.models.Avatar;

/**
 * Spring Data JPA repository for the Avatar entity.
 */
@SuppressWarnings("unused")
@Repository
public interface AvatarRepository {

    public void createAvatar(Avatar avatar);
    public void updateAvatar(Avatar avatar);

}
