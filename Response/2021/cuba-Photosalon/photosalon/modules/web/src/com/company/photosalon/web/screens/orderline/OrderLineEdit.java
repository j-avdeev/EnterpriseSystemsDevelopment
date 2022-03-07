package com.company.photosalon.web.screens.orderline;

import com.haulmont.cuba.gui.screen.*;
import com.company.photosalon.entity.OrderLine;

@UiController("photosalon_OrderLine.edit")
@UiDescriptor("order-line-edit.xml")
@EditedEntityContainer("orderLineDc")
@LoadDataBeforeShow
public class OrderLineEdit extends StandardEditor<OrderLine> {
}