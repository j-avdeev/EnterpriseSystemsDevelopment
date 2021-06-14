package com.company.photosalon.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.photosalon.entity.Order;

@UiController("photosalon_Order.browse")
@UiDescriptor("order-browse.xml")
@LookupComponent("ordersTable")
@LoadDataBeforeShow
public class OrderBrowse extends StandardLookup<Order> {
}