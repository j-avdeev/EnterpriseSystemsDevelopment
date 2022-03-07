package com.company.airticket_booking.web.screens.ticket;

import com.haulmont.cuba.gui.screen.*;
import com.company.airticket_booking.entity.Ticket;

@UiController("airticketbooking_Ticket.browse")
@UiDescriptor("ticket-browse.xml")
@LookupComponent("ticketsTable")
@LoadDataBeforeShow
public class TicketBrowse extends StandardLookup<Ticket> {
}