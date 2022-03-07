package com.company.lab6_cuba.web.screens.car;

import com.haulmont.cuba.gui.components.Table;
import com.haulmont.cuba.gui.screen.*;
import com.company.lab6_cuba.entity.Car;

@UiController("lab6cuba_Car.browse")
@UiDescriptor("car-browse.xml")
@LookupComponent("carsTable")
@LoadDataBeforeShow
public class CarBrowse extends StandardLookup<Car> {
    @Subscribe("carsTable")
    public void onCarsTableSelection(Table.SelectionEvent<Car> event) {
        
    }
}