package com.company.airticket_booking.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

@Table(name = "AIRTICKETBOOKING_PASSANGER")
@Entity(name = "airticketbooking_Passanger")
@NamePattern("%s|passengerName")
public class Passenger extends StandardEntity {
    private static final long serialVersionUID = 5337377434906617521L;

    @NotNull
    @Column(name = "EMAIL", nullable = false, unique = true)
    @Email
    private String email;

    @Column(name = "PASSENGER_NAME")
    private String passengerName;

    @Column(name = "CARD_INFO")
    @NotNull
    private String cardInfo;

    @NotNull
    @Column(name = "PASSENGER_ID", nullable = false, unique = true)
    private String passengerID;

    public String getPassengerName() {
        return passengerName;
    }

    public void setPassengerName(String passengerName) {
        this.passengerName = passengerName;
    }

    public String getPassengerID() {
        return passengerID;
    }

    public void setPassengerID(String passengerID) {
        this.passengerID = passengerID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCardInfo() {
        return cardInfo;
    }

    public void setCardInfo(String cardInfo) {
        this.cardInfo = cardInfo;
    }

}