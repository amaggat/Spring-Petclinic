package org.springframework.samples.petclinic.model;

public class Login {

    public Login()
    {

    }

    public Login(String username, String password) {
        this.username = username;
        this.password = password;
    }

    private String username;
    private String password;

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }
}
