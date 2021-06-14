package com.company.bookshop.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Order;

@UiController("bookshop_Order.browse")
@UiDescriptor("order-browse.xml")
@LookupComponent("ordersTable")
@LoadDataBeforeShow
public class OrderBrowse extends StandardLookup<Order> {
}