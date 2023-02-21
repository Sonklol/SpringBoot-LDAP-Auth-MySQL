package com.asir.qatar.AuthLDAP;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.Customizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.ldap.userdetails.LdapAuthoritiesPopulator;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.context.annotation.Bean;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.ldap.core.DirContextOperations;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfiguration;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
public class WebSecurityConfig {

  @Bean
  public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
    http
      .authorizeRequests()
        .anyRequest().fullyAuthenticated()
        .and()
      .formLogin();

    return http.build();
  }

  @Autowired
  public void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth
      .ldapAuthentication()
        .userSearchBase("CN=Users,DC=daniel,DC=net")
        .userSearchFilter("(&(objectClass=user)(sAMAccountName={0}))")
        .ldapAuthoritiesPopulator(ldapAuthoritiesPopulator())
        .contextSource()
        .url("ldap://192.168.16.161:389")
        .managerDn("CN=Administrador,CN=Users,DC=daniel,DC=net")
        .managerPassword("a,12345678");
  }
  private LdapAuthoritiesPopulator ldapAuthoritiesPopulator(){
    return new LdapAuthoritiesPopulator() {
      @Override
      public Collection<? extends GrantedAuthority> getGrantedAuthorities(DirContextOperations userData, String username){
        return Arrays.asList(new SimpleGrantedAuthority("ROLE_USER"));
      }
    };
  }
}