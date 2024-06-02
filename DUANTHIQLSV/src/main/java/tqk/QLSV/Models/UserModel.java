package tqk.QLSV.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;

import java.util.Collection;
import java.util.Set;
import java.util.stream.Collectors;


@Entity
@Table(name="USERS")
public class UserModel   {
	

    @Id
    @Column(name="USERNAME")
    private String username;

    @Column(name="PASSWORD")
    private String password;
    
    @Column(name="ROLE")
    private String role; // Thêm cột role


    // Getter and Setter methods
    
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
    public String toString() {
        return "UserModel [username=" + username + ", password=" + password + ",]";
    }

}
