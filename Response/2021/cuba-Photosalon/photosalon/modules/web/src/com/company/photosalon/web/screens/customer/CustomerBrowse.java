package com.company.photosalon.web.screens.customer;

import com.haulmont.cuba.gui.screen.*;
import com.company.photosalon.entity.Customer;

@UiController("photosalon_Customer.browse")
@UiDescriptor("customer-browse.xml")
@LookupComponent("customersTable")
@LoadDataBeforeShow
public class CustomerBrowse extends StandardLookup<Customer> {
}