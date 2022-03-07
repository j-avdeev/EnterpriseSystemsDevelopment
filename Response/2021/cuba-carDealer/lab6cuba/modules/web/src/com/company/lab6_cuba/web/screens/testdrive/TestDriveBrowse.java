package com.company.lab6_cuba.web.screens.testdrive;

import com.haulmont.cuba.gui.screen.*;
import com.company.lab6_cuba.entity.TestDrive;

@UiController("lab6cuba_TestDrive.browse")
@UiDescriptor("test-drive-browse.xml")
@LookupComponent("testDrivesTable")
@LoadDataBeforeShow
public class TestDriveBrowse extends StandardLookup<TestDrive> {
}