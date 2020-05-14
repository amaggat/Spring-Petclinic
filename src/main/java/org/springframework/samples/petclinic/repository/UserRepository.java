package org.springframework.samples.petclinic.repository;

import org.springframework.samples.petclinic.model.User;

import java.util.Collection;

public interface UserRepository {

    Collection<User> findByUsernameAndPassword(String username, String password);
}
