package com.company.bookshop.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Table(name = "BOOKSHOP_ORDER")
@Entity(name = "bookshop_Order")
@NamePattern("%s|orderStatus")
public class Order extends StandardEntity {
    private static final long serialVersionUID = 222172534942077914L;

    @NotNull
    @Column(name = "ORDER_STATUS", nullable = false)
    private String orderStatus;

    @Column(name = "ORDER_CREATED", nullable = false)
    @NotNull
    private LocalDateTime orderCreated;

    @Column(name = "ORDER_PAID", nullable = false)
    @NotNull
    private LocalDateTime orderPaid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CUSTOMER_ID")
    @NotNull
    private Customer customer;

    public void setOrderCreated(LocalDateTime orderCreated) {
        this.orderCreated = orderCreated;
    }

    public LocalDateTime getOrderCreated() {
        return orderCreated;
    }

    public void setOrderPaid(LocalDateTime orderPaid) {
        this.orderPaid = orderPaid;
    }

    public LocalDateTime getOrderPaid() {
        return orderPaid;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
}