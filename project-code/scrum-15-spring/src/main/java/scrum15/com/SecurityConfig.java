package scrum15.com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import scrum15.com.service.CustomerDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig  extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(HttpSecurity security) throws Exception {

		// enable https secure connection
		security.requiresChannel().anyRequest().requiresSecure()
		.and().formLogin()
		// logging in
			.loginPage("/login")
			.loginProcessingUrl("/myLogin")
			
			.usernameParameter("email")
			.passwordParameter("password")
			.defaultSuccessUrl("/success-login", true)
			.failureUrl("/error-login")
			.permitAll()
		.and().logout()
		// logging out
			.invalidateHttpSession(true)
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.logoutSuccessUrl("/login")
			.permitAll()
			
		// authorize certain pages
		.and().authorizeRequests()
		
			// free recipe pages
			.antMatchers("/account.html").hasAnyRole("PREMIUM", "STANDARD")
			.antMatchers("/chilli-con-carne/**").hasAnyRole("PREMIUM", "STANDARD")
			.antMatchers("/mackerel-recheado/**").hasAnyRole("PREMIUM", "STANDARD")
			.antMatchers("/vegetable-biryani/**").hasAnyRole("PREMIUM", "STANDARD")
			.antMatchers("/moroccan-style-soup/**").hasAnyRole("PREMIUM", "STANDARD")
			.antMatchers("/saffron-chicken-korma-with-wholemeal-paratha/**").hasAnyRole("PREMIUM", "STANDARD")
			
			// premium recipe pages
			.antMatchers("/chilli-bean-stir-fry/**").hasAnyRole("PREMIUM")
			.antMatchers("/vegan-gingerbread/**").hasAnyRole("PREMIUM")
			.antMatchers("/green-peppercorn-and-lemongrass-coconut-broth/**").hasAnyRole("PREMIUM")
			.antMatchers("/vegan-tofu-katsu-curry/**").hasAnyRole("PREMIUM")
			.antMatchers("/apple-pie/**").hasAnyRole("PREMIUM")
			.antMatchers("/potato-rosti-quiche/**").hasAnyRole("PREMIUM")
			
			// pages for all users
			.antMatchers("/").permitAll()
			.antMatchers("/index.html").permitAll()
			.antMatchers("/spices_list.html").permitAll()
			.antMatchers("/recipe_list.html").permitAll()
			.antMatchers("/spices/**").permitAll()
			.antMatchers("/checkout").permitAll()
			.antMatchers("/subchoice").permitAll()
			.antMatchers("/standard").permitAll()
			.antMatchers("/addStandard").permitAll()
			.antMatchers("/premium").permitAll()
			.antMatchers("/addPremium").permitAll()
			.antMatchers("/addGuest").permitAll()
			.antMatchers("/StarterKit").permitAll()
			.antMatchers("/miniStarterKit").permitAll()
			.antMatchers("/deliveryAddress").permitAll()
			.antMatchers("/updatedetails").permitAll()
			.antMatchers("/orders").permitAll()
			.anyRequest().authenticated()
		.and().exceptionHandling().accessDeniedPage("/access-denied");
	}
	
	@Autowired
	private CustomerDetailsService customerDetailsService;
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(customerDetailsService).passwordEncoder(passwordEncoder());
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
}
