package com.company.airticket_booking.web.screens.passenger;

import com.haulmont.cuba.gui.screen.*;
import com.company.airticket_booking.entity.Passenger;

@UiController("airticketbooking_Passanger.browse")
@UiDescriptor("passenger-browse.xml")
@LookupComponent("passengersTable")
@LoadDataBeforeShow
public class PassengerBrowse extends StandardLookup<Passenger> {
}