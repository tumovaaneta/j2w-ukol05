package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;
import java.util.Random;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller

public class RegistraceController {

//  @GetMapping("")
//  public String formular() {
//    return "formular";
//  }

    @GetMapping("")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/formular");
        modelAndView.addObject("form", new RegistraceForm());
        return modelAndView;
    }

    @PostMapping("")
    public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {
        if (form.getNarozeni() != null) {
            Period period = form.getNarozeni().until(LocalDate.now());
            int vek = period.getYears();

            if (vek < 9 || vek > 15) {
                return "/chybny-vek";
            }
        }

        if (bindingResult.hasErrors()) {
            return "/formular";
        }

        return new ModelAndView("/objednavka")
                .addObject("jmeno", form.getJmeno())
                .addObject("narozeni", form.getNarozeni())
                .addObject("pohlavi", form.getPohlavi())
                .addObject("turnus", form.getTurnus())
                .addObject("email", form.getEmail())
                .addObject("telefon", form.getTelefon());
    }

}
