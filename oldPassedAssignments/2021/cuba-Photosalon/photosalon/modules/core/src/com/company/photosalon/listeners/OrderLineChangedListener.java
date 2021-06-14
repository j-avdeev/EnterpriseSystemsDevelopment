package com.company.photosalon.listeners;

import com.company.photosalon.entity.OrderLine;
import com.haulmont.cuba.core.TransactionalDataManager;
import com.haulmont.cuba.core.app.events.EntityChangedEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;

import javax.inject.Inject;
import java.util.UUID;

@Component("photosalon_OrderLineChangedListener")
public class OrderLineChangedListener {

    @Inject
    private TransactionalDataManager txDM;

    @TransactionalEventListener(phase = TransactionPhase.BEFORE_COMMIT)
    public void beforeCommit(EntityChangedEvent<OrderLine, UUID> event) {

    }
}