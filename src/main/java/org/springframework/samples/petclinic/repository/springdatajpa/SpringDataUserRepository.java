package org.springframework.samples.petclinic.repository.springdatajpa;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.samples.petclinic.model.User;
import org.springframework.samples.petclinic.repository.UserRepository;

import java.util.Collection;

public interface SpringDataUserRepository extends UserRepository, Repository<User, Integer> {

    @Override
    @Query("SELECT DISTINCT user From User user where user.username =:username and user.password =:password")
    Collection<User> findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

}
