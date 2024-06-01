package tqk.QLSV.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="ROLES")
public class RoleModel {

    @Id
    @Column(name="ROLE_NAME")
    private String roleName;

    // Getter and Setter methods
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "RoleModel [roleName=" + roleName + "]";
    }
}
