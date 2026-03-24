package ar.edu.itba.paw.models;

public class User {
    private long id;
    private String email;
    private String password;
    private String username;

    public User(long id, String email, String password, String username) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.username = username;
    }

    public long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    @Override
    public String toString(){
        return " User [email = " + email + ", password = " + password + ", username = " + username + "]";
    }
}
