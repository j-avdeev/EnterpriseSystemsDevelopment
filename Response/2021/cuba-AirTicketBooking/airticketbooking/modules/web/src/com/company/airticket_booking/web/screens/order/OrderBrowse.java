package com.company.airticket_booking.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.airticket_booking.entity.Order;

@UiController("airticketbooking_Order.browse")
@UiDescriptor("order-browse.xml")
@LookupComponent("ordersTable")
@LoadDataBeforeShow
public class OrderBrowse extends StandardLookup<Order> {
}