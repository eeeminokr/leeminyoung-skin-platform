package cosmetic.infrastructure.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cosmetic.domain.AuthDetails;
import cosmetic.domain.User;
import cosmetic.service.UserService;

@Service
public class JwtUserDetailsService implements UserDetailsService {

    @Autowired
    private UserService userService;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = this.userService.findByEmail(username);
        if(user==null) {
            throw new UsernameNotFoundException("Cannot find an user.");
        }
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
		//SimpleGrantedAuthority userRole = new SimpleGrantedAuthority(RoleType.ROLE_USER.name());
		SimpleGrantedAuthority userRole = new SimpleGrantedAuthority(user.getRoleType().toString());
        authorities.add(userRole);
        
		AuthDetails details = new AuthDetails(user.getEmail(), user.getPassword(), authorities);
		details.setId(user.getId());
		details.setRoleType(user.getRoleType());
		return details;
    }
    
}
