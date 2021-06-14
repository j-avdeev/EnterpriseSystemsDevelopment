package com.company.lab6_cuba.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "LAB6CUBA_CAR", indexes = {
        @Index(name = "IDX_LAB6CUBA_CAR_MODEL", columnList = "MODEL")
})
@Entity(name = "lab6cuba_Car")
@NamePattern("%s|model")
public class Car extends StandardEntity {
    private static final long serialVersionUID = 1995902838554637711L;

    @NotNull
    @Column(name = "MODEL", nullable = false)
    private String model;

    @NotNull
    @Column(name = "EQUIPMENT", nullable = false)
    private String equipment;

    @Column(name = "COLOR", nullable = false)
    @NotNull
    private String color;

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getEquipment() {
        return equipment;
    }

    public void setEquipment(String equipment) {
        this.equipment = equipment;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }
}