package com.company.bookshop.web.screens.customer;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Customer;

@UiController("bookshop_Customer.edit")
@UiDescriptor("customer-edit.xml")
@EditedEntityContainer("customerDc")
@LoadDataBeforeShow
public class CustomerEdit extends StandardEditor<Customer> {
}