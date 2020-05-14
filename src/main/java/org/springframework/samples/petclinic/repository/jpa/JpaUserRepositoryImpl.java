package org.springframework.samples.petclinic.repository.jpa;

import org.springframework.samples.petclinic.model.User;
import org.springframework.samples.petclinic.repository.UserRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Collection;

@Repository
public class JpaUserRepositoryImpl implements UserRepository {

    @PersistenceContext
    private EntityManager em;

    @Override
    @SuppressWarnings("unchecked")
    public Collection<User> findByUsernameAndPassword(String username, String password) {
        Query query = this.em.createQuery("SELECT DISTINCT user From User user where user.username = :username and user.password = :password");
        query.setParameter("username", username);
        query.setParameter("password", password);
        return query.getResultList();
    }
}
