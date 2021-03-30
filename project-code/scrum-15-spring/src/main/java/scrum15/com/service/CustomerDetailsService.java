package scrum15.com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import scrum15.com.model.Customer;
import scrum15.com.repo.CustomerRepo;

@Service
public class CustomerDetailsService implements UserDetailsService{

	@Autowired
	private CustomerRepo repo;

	@Override
	public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
		
		Customer domainCustomer = repo.findByEmail(login);
		List<GrantedAuthority> authorities =  new ArrayList<GrantedAuthority>();
		
		if (domainCustomer.isPremium()) {
			authorities.add(new SimpleGrantedAuthority("ROLE_PREMIUM"));
		} else {
			authorities.add(new SimpleGrantedAuthority("ROLE_STANDARD"));
		}
		
		return new User(domainCustomer.getEmail(), domainCustomer.getPassword(), true, true, true, true, authorities);
	}
}