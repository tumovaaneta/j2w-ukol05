package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.*;

import java.time.LocalDate;
import java.util.Date;

public class RegistraceForm {
    @NotBlank
    private String pohlavi;

    @NotBlank
    private String turnus;

    @Email

    private String email;

    @NotBlank
    private String jmeno;

    @NotNull
    private LocalDate narozeni;


    private String telefon;


    public String getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public LocalDate getNarozeni() {
        return narozeni;
    }

    public void setNarozeni(LocalDate narozeni) {
        this.narozeni = narozeni;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }
}
