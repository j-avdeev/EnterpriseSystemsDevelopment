package com.company.airticket_booking.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "AIRTICKETBOOKING_ORDER")
@Entity(name = "airticketbooking_Order")
public class Order extends StandardEntity {
    private static final long serialVersionUID = -5969351515465746567L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PASSANGER_ID")
    @NotNull
    private Passenger passanger;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "TICKET_ID")
    private Ticket ticket;

    public Ticket getTicket() {
        return ticket;
    }

    public void setTicket(Ticket ticket) {
        this.ticket = ticket;
    }

    public Passenger getPassanger() {
        return passanger;
    }

    public void setPassanger(Passenger passanger) {
        this.passanger = passanger;
    }
}