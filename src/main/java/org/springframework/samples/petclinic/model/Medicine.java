package org.springframework.samples.petclinic.model;


import org.springframework.beans.support.MutableSortDefinition;
import org.springframework.beans.support.PropertyComparator;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.*;

@Entity
@Table(name ="medicine")
public class Medicine extends NamedEntity{

    @NotEmpty
    @Column(name = "dose")
    private String dose = new String();

    @ManyToOne
    @JoinColumn(name = "pet_id")
    private Pet pet;

    public String getDose() {
        return dose;
    }

    public Pet getPet() {
        return pet;
    }

    public void setPet(Pet pet) {
        this.pet = pet;
    }

    public void setDose(String dose) {
        this.dose = dose;
    }

}
