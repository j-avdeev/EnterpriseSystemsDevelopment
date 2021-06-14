package com.company.photosalon.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.photosalon.entity.Order;

@UiController("photosalon_Order.edit")
@UiDescriptor("order-edit.xml")
@EditedEntityContainer("orderDc")
@LoadDataBeforeShow
public class OrderEdit extends StandardEditor<Order> {
}