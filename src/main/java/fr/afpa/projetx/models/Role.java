package fr.afpa.projetx.models;


import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Objects;

/**
 * A Role.
 */
@Entity
@Table(name = "roles")
public class Role implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_role;
    @Column(name = "name")
    private String name;
    @ManyToMany(mappedBy ="roles", fetch = FetchType.EAGER)
    private Collection<User> users;

    public Long getId_role() {
        return id_role;
    }

    public void setId_role(Long id_role) {
        this.id_role = id_role;
    }

    public String getName() {
        return name;
    }

    public Role name(String name) {
        this.name = name;
        return this;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Role role = (Role) o;
        if (role.getId_role() == null || getId_role() == null) {
            return false;
        }
        return Objects.equals(getId_role(), role.getId_role());
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getId_role());
    }

    @Override
    public String toString() {
        return "Role{" +
            "id=" + getId_role() +
            ", name='" + getName() + "'" +
            "}";
    }
}
