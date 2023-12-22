package org.example;

import java.util.Calendar;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Appointment {
    Patient patient;
    Doctor doctor;
    Calendar appointmentDate;
}
