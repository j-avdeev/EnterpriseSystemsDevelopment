-- begin LAB6CUBA_TEST_DRIVE
alter table LAB6CUBA_TEST_DRIVE add constraint FK_LAB6CUBA_TEST_DRIVE_ON_CAR foreign key (CAR_ID) references LAB6CUBA_CAR(ID)^
create index IDX_LAB6CUBA_TEST_DRIVE_ON_CAR on LAB6CUBA_TEST_DRIVE (CAR_ID)^
-- end LAB6CUBA_TEST_DRIVE
-- begin LAB6CUBA_CAR
create index IDX_LAB6CUBA_CAR_MODEL on LAB6CUBA_CAR (MODEL)^
-- end LAB6CUBA_CAR
