package org.springframework.samples.petclinic.repository;

import org.springframework.samples.petclinic.model.Medicine;

import java.util.List;

public interface MedicineRepository {
    void save(Medicine med);

    List<Medicine> findByPetId(Integer petId);

}
