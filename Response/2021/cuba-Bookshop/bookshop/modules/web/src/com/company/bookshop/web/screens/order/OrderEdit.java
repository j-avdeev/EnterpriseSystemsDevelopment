package com.company.bookshop.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Order;

@UiController("bookshop_Order.edit")
@UiDescriptor("order-edit.xml")
@EditedEntityContainer("orderDc")
@LoadDataBeforeShow
public class OrderEdit extends StandardEditor<Order> {
}