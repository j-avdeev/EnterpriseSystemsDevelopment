package com.company.lab6_cuba.web.screens.testdrive;

import com.haulmont.cuba.gui.screen.*;
import com.company.lab6_cuba.entity.TestDrive;

@UiController("lab6cuba_TestDrive.edit")
@UiDescriptor("test-drive-edit.xml")
@EditedEntityContainer("testDriveDc")
@LoadDataBeforeShow
public class TestDriveEdit extends StandardEditor<TestDrive> {
    @Subscribe
    public void onInitEntity(InitEntityEvent<TestDrive> event) {
        event.getEntity().setDuration(1);
    }
}