package com.company.lab6_cuba.web.screens.car;

import com.haulmont.cuba.gui.screen.*;
import com.company.lab6_cuba.entity.Car;

@UiController("lab6cuba_Car.edit")
@UiDescriptor("car-edit.xml")
@EditedEntityContainer("carDc")
@LoadDataBeforeShow
public class CarEdit extends StandardEditor<Car> {
}