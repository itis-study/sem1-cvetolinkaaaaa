package org.example;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Calendar;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Patient {
    String id;
    String name;
    String surname;
    Date birthDate;
    String password;
    String email;
    String telephone;

    @Override
    public String toString() {
        return "Patient{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", birthDate=" + birthDate +
                ", email='" + email + '\'' +
                ", telephone='" + telephone + '\'' +
                '}';
    }
//    private ROLE role;
//    public enum ROLE {
//        USER, ADMIN, UNKNOWN
//    }
}
