package com.company.airticket_booking.web.screens.ticket;

import com.haulmont.cuba.gui.screen.*;
import com.company.airticket_booking.entity.Ticket;

@UiController("airticketbooking_Ticket.edit")
@UiDescriptor("ticket-edit.xml")
@EditedEntityContainer("ticketDc")
@LoadDataBeforeShow
public class TicketEdit extends StandardEditor<Ticket> {
}