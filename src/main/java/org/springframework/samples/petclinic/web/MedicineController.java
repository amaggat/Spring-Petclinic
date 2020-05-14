package org.springframework.samples.petclinic.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Medicine;
import org.springframework.samples.petclinic.model.Pet;
import org.springframework.samples.petclinic.service.ClinicService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class MedicineController {

    private final ClinicService clinicService;

    @Autowired
    public MedicineController(ClinicService clinicService) {
        this.clinicService = clinicService;
    }

    @InitBinder
    public void setAllowedFields(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }


    @ModelAttribute("medicine")
    public Medicine loadPetWithMed(@PathVariable("petId") int petId) {
        Pet pet = this.clinicService.findPetById(petId);
        Medicine med = new Medicine();
        pet.addMed(med);
        return med;
    }

    @GetMapping(value = "/owners/*/pets/{petId}/medicine/new")
    public String initNewMedicine(@PathVariable("petId") int petId, Map<String, Object> model) {
        return "pets/createOrUpdateMedicine";
    }

    @PostMapping(value = "/owners/{ownerId}/pets/{petId}/medicine/new")
    public String processNewMedicine(@Valid Medicine med, BindingResult result) {
        if (result.hasErrors()) {
            return "pets/createOrUpdateMedicine";
        } else {
            this.clinicService.saveMedicine(med);
            return "redirect:/owners/{ownerId}";
        }
    }

    @GetMapping(value = "/owners/*/pets/{petId}/medicine")
    public String showMeds(@PathVariable int petId, Map<String, Object> model) {
        model.put("medicine", this.clinicService.findPetById(petId).getMed());
        return "medicineList";
    }
}
