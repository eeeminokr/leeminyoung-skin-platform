package cosmetic.domain;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;



public class AuthDetails extends org.springframework.security.core.userdetails.User {
    private String accessToken;
    private String refreshToken;  
    private int id;
    private RoleType roleType;

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }
    public AuthDetails(String username, String password, List<SimpleGrantedAuthority> authorities) {
        super(username, password, authorities);
    }
    
    public AuthDetails(String username, String password, boolean enabled, boolean accountNonExpired,
            boolean credentialsNonExpired, boolean accountNonLocked,
            Collection<? extends GrantedAuthority> authorities) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
    }

    public String getAccessToken() {
        return accessToken;
    }

    public String getRefreshToken() {
        return refreshToken;
    }

	public AuthDetails(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setRoleType(RoleType roleType) {
		this.roleType = roleType;
	}

    public RoleType getRoleType() {
        return roleType;
    }


}
