package com.company.photosalon.web.screens.customer;

import com.haulmont.cuba.gui.screen.*;
import com.company.photosalon.entity.Customer;

@UiController("photosalon_Customer.edit")
@UiDescriptor("customer-edit.xml")
@EditedEntityContainer("customerDc")
@LoadDataBeforeShow
public class CustomerEdit extends StandardEditor<Customer> {
}