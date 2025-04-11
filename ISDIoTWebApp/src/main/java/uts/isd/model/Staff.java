package uts.isd.model;

import java.io.Serializable;

public class Staff implements Serializable {
    private String name;
    private String department;
    private String email;
    private String password;
    private String dob;
    private String gender;
    private String hireDate;

    public Staff() {}

    public Staff(String name, String department, String email, String password, String dob, String gender, String hireDate) {
        this.name = name;
        this.department = department;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.gender = gender;
        this.hireDate = hireDate;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getDepartment() {
        return department;
    }
    public void setDepartment(String department) {
        this.department = department;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getHireDate() {
        return hireDate;
    }
    public void setHireDate(String hireDate) {
        this.hireDate = hireDate;
    }
}


