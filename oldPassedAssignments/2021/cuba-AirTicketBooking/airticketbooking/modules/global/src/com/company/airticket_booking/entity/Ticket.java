package com.company.airticket_booking.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Table(name = "AIRTICKETBOOKING_TICKET")
@Entity(name = "airticketbooking_Ticket")
@NamePattern("%s|ticketName")
public class Ticket extends StandardEntity {
    private static final long serialVersionUID = 7355325300142064564L;

    @NotNull
    @Column(name = "TICKET_NAME", nullable = false)
    private String ticketName;

    @Column(name = "PLACE")
    @NotNull
    private Integer place;

    @NotNull
    @Column(name = "TICKET_ID", nullable = false, unique = true)
    private String ticketID;

    @Column(name = "AIRPLANE_ID")
    @NotNull
    private Integer airplaneID;

    @Temporal(TemporalType.TIME)
    @NotNull
    @Column(name = "TICKET_TIME", nullable = false)
    private Date ticketTime;

    @Column(name = "COST")
    @NotNull
    private Integer cost;

    public Date getTicketTime() {
        return ticketTime;
    }

    public void setTicketTime(Date ticketTime) {
        this.ticketTime = ticketTime;
    }

    public void setTicketID(String ticketID) {
        this.ticketID = ticketID;
    }

    public String getTicketID() {
        return ticketID;
    }

    public void setAirplaneID(Integer airplaneID) {
        this.airplaneID = airplaneID;
    }

    public Integer getAirplaneID() {
        return airplaneID;
    }

    public Integer getPlace() {
        return place;
    }

    public void setPlace(Integer place) {
        this.place = place;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    public Integer getCost() {
        return cost;
    }

    public String getTicketName() {
        return ticketName;
    }

    public void setTicketName(String ticketName) {
        this.ticketName = ticketName;
    }

}