create table LAB6CUBA_TEST_DRIVE (
    ID uuid,
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
    CAR_ID uuid not null,
    APPROVED boolean not null,
    --
    primary key (ID)
);