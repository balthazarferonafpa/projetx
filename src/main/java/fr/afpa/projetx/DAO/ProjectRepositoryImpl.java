package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Project;

public class ProjectRepositoryImpl extends AbstractDao implements ProjectRepository {
    @Override
    public void createProject(Project project) {
        getSession().persist(project);
    }

    @Override
    public void updateProject(Project project) {
        getSession().update(project);
    }
}
