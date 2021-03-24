package org.springframework.samples.petclinic.repository.jpa;

import org.springframework.samples.petclinic.model.Medicine;
import org.springframework.samples.petclinic.repository.MedicineRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class JpaMedRepositoryImpl implements MedicineRepository{
    @PersistenceContext
    private EntityManager em;


    @Override
    public void save(Medicine med) {
        if (med.getId() == null) {
            this.em.persist(med);
        } else {
            this.em.merge(med);
        }
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Medicine> findByPetId(Integer petId) {
        Query query = this.em.createQuery("SELECT med FROM Medicine med where med.pet.id= :id");
        query.setParameter("id", petId);
        return query.getResultList();
    }
}
