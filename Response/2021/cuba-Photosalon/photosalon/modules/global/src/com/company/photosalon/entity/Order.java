package com.company.photosalon.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "PHOTOSALON_ORDER")
@Entity(name = "photosalon_Order")
public class Order extends StandardEntity {
    private static final long serialVersionUID = -8184766939864376787L;

    @Column(name = "ORDER_INFO", nullable = false)
    @NotNull
    private String order_info;

    @Column(name = "DELIVERY_INFO", nullable = false)
    @NotNull
    private String delivery_info;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "order")
    private List<OrderLine> orderLine;

    @JoinColumn(name = "CUSTOMER_INFO_ID")
    @ManyToOne(fetch = FetchType.LAZY)
    @Lookup(type = LookupType.DROPDOWN, actions = {})
    private Customer customer_info;

    @Column(name = "TRANSACTION_INFO", nullable = false)
    @NotNull
    private String transaction_info;

    public List<OrderLine> getOrderLine() {
        return orderLine;
    }

    public void setOrderLine(List<OrderLine> orderLine) {
        this.orderLine = orderLine;
    }

    public void setCustomer_info(Customer customer_info) {
        this.customer_info = customer_info;
    }

    public Customer getCustomer_info() {
        return customer_info;
    }

    public String getTransaction_info() {
        return transaction_info;
    }

    public void setTransaction_info(String transaction_info) {
        this.transaction_info = transaction_info;
    }

    public String getDelivery_info() {
        return delivery_info;
    }

    public void setDelivery_info(String delivery_info) {
        this.delivery_info = delivery_info;
    }

    public String getOrder_info() {
        return order_info;
    }

    public void setOrder_info(String order_info) {
        this.order_info = order_info;
    }
}