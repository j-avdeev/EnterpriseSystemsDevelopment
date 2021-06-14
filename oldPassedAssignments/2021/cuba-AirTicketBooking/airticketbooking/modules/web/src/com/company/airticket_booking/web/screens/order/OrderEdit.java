package com.company.airticket_booking.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.airticket_booking.entity.Order;

@UiController("airticketbooking_Order.edit")
@UiDescriptor("order-edit.xml")
@EditedEntityContainer("orderDc")
@LoadDataBeforeShow
public class OrderEdit extends StandardEditor<Order> {
}