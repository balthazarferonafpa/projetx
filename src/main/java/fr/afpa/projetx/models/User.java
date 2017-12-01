package fr.afpa.projetx.models;


import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import java.util.Objects;

/**
 * A User.
 */
@Entity
@Table(name = "users")
public class User implements Serializable {


    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_user;

    @Column(name = "firstname")
    private String firstname;

    @Column(name = "lastname")
    private String lastname;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "skill")
    private String skill;

    @Column(name="enabled")
    private Boolean enabled;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(
                    name = "id_user", referencedColumnName = "id_user"),
            inverseJoinColumns = @JoinColumn(
                    name = "id_role", referencedColumnName = "id_role"))
    private Set<Role> roles = new HashSet<Role>(0);

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "user", cascade = CascadeType.ALL)
    private Avatar avatar;

    @ManyToMany
    @JoinTable(name = "user_projects",
               joinColumns = @JoinColumn(name="id_user"),
               inverseJoinColumns = @JoinColumn(name="id_project"))
    private Set<Project> projects = new HashSet<>();


    public User(String firstname, String lastname, String email, String password, String skill, Boolean enabled, Set<Role> roles, Avatar avatar, Set<Project> projects) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
        this.skill = skill;
        this.enabled = enabled;
        this.roles = roles;
        this.avatar = avatar;
        this.projects = projects;
    }

    public User(){}

    public Long getId_user() {
        return id_user;
    }

    public void setId_user(Long id_user) {
        this.id_user = id_user;
    }

    public String getFirstname() {
        return firstname;
    }

    public User firstname(String firstname) {
        this.firstname = firstname;
        return this;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public User lastname(String lastname) {
        this.lastname = lastname;
        return this;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public User email(String email) {
        this.email = email;
        return this;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public User password(String password) {
        this.password = password;
        return this;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSkill() {
        return skill;
    }

    public User skill(String skill) {
        this.skill = skill;
        return this;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public Avatar getAvatar() {
        return avatar;
    }

    public User avatar(Avatar avatar) {
        this.avatar = avatar;
        return this;
    }

    public void setAvatar(Avatar avatar) {
        this.avatar = avatar;
    }

    public Set<Project> getProjects() {
        return projects;
    }

    public User projects(Set<Project> projects) {
        this.projects = projects;
        return this;
    }

    public User addProjects(Project project) {
        this.projects.add(project);
        project.getUsers().add(this);
        return this;
    }

    public User removeProjects(Project project) {
        this.projects.remove(project);
        project.getUsers().remove(this);
        return this;
    }

    public void setProjects(Set<Project> projects) {
        this.projects = projects;
    }
    // jhipster-needle-entity-add-getters-setters - JHipster will add getters and setters here, do not remove

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        User user = (User) o;
        if (user.getId_user() == null || getId_user() == null) {
            return false;
        }
        return Objects.equals(getId_user(), user.getId_user());
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getId_user());
    }

    @Override
    public String toString() {
        return "User{" +
            "id=" + getId_user() +
            ", firstname='" + getFirstname() + "'" +
            ", lastname='" + getLastname() + "'" +
            ", email='" + getEmail() + "'" +
            ", password='" + getPassword() + "'" +
            ", skill='" + getSkill() + "'" +
            "}";
    }
}
