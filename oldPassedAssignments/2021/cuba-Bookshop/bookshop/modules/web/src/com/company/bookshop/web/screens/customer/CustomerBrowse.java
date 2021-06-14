package com.company.bookshop.web.screens.customer;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Customer;

@UiController("bookshop_Customer.browse")
@UiDescriptor("customer-browse.xml")
@LookupComponent("customersTable")
@LoadDataBeforeShow
public class CustomerBrowse extends StandardLookup<Customer> {
}