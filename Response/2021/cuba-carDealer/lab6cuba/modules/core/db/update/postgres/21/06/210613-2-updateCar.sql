update LAB6CUBA_CAR set COLOR = '' where COLOR is null ;
alter table LAB6CUBA_CAR alter column COLOR set not null ;
