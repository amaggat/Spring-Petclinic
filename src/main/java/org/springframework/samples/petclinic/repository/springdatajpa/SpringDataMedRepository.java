package org.springframework.samples.petclinic.repository.springdatajpa;

import org.springframework.data.repository.Repository;
import org.springframework.samples.petclinic.model.Medicine;
import org.springframework.samples.petclinic.repository.MedicineRepository;

public interface SpringDataMedRepository extends MedicineRepository, Repository<Medicine, Integer> {
}
