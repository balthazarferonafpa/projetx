package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Project;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("ProjectDao")
@Transactional
public class ProjectDAOImpl extends AbstractDao<Integer, Project> implements ProjectDAO {
    @Override
    public void createProject(Project project) {
        getSession().persist(project);
    }

    @Override
    public void updateProject(Project project) {
        getSession().update(project);
    }
}
