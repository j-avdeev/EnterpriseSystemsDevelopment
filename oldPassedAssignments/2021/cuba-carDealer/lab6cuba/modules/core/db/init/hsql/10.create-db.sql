-- begin LAB6CUBA_TEST_DRIVE
create table LAB6CUBA_TEST_DRIVE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    START_DATE timestamp not null,
    DURATION integer not null,
    CAR_ID varchar(36) not null,
    APPROVED boolean not null,
    --
    primary key (ID)
)^
-- end LAB6CUBA_TEST_DRIVE
-- begin LAB6CUBA_CAR
create table LAB6CUBA_CAR (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    MODEL varchar(255) not null,
    EQUIPMENT varchar(255) not null,
    COLOR varchar(255) not null,
    --
    primary key (ID)
)^
-- end LAB6CUBA_CAR
