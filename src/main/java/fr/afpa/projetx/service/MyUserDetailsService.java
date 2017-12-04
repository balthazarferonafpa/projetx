package fr.afpa.projetx.service;

import fr.afpa.projetx.DAO.UserDAO;
import fr.afpa.projetx.models.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("userDetailsService")
public class MyUserDetailsService implements UserDetailsService {

    //get user from the database, via Hibernate
    @Autowired
    private UserDAO userDAO;



    @Transactional(readOnly=true)
    @Override
    public UserDetails loadUserByUsername(final String email) throws UsernameNotFoundException {


        fr.afpa.projetx.models.User user = userDAO.findByEmail(email);

        System.out.println("LoadByUserName : "+email);
        System.out.println("Roles : "+user.getRoles());

        List<GrantedAuthority> authorities =
                buildUserAuthority(user.getRoles());

        return buildUserForAuthentication(user, authorities);

    }

    // Converts com.mkyong.users.model.User user to
    // org.springframework.security.core.userdetails.User
    private org.springframework.security.core.userdetails.User buildUserForAuthentication(fr.afpa.projetx.models.User user, List<GrantedAuthority> authorities) {

        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), user.getEnabled(), true, true, true, authorities);
    }


    private List<GrantedAuthority> buildUserAuthority(Set<Role> userRoles) {

        Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

        // Build user's authorities
        for (Role userRole : userRoles) {
            System.out.println(userRole);
            setAuths.add(new SimpleGrantedAuthority(userRole.getName()));
        }

        List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);
        System.out.println("Rseult : "+ Result);
        return Result;
    }

}