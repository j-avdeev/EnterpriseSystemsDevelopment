package com.company.airticket_booking.web.screens.passenger;

import com.haulmont.cuba.gui.screen.*;
import com.company.airticket_booking.entity.Passenger;

@UiController("airticketbooking_Passanger.edit")
@UiDescriptor("passenger-edit.xml")
@EditedEntityContainer("passengerDc")
@LoadDataBeforeShow
public class PassengerEdit extends StandardEditor<Passenger> {
}