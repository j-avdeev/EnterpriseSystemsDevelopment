package com.company.lab6_cuba.core;

import com.company.lab6_cuba.Lab6cubaTestContainer;
import com.haulmont.cuba.core.EntityManager;
import com.haulmont.cuba.core.Persistence;
import com.haulmont.cuba.core.Transaction;
import com.haulmont.cuba.core.TypedQuery;
import com.haulmont.cuba.core.global.AppBeans;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.security.entity.User;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.RegisterExtension;

import java.util.List;

public class SampleIntegrationTest {

    @RegisterExtension
    public static Lab6cubaTestContainer cont = Lab6cubaTestContainer.Common.INSTANCE;

    private static Metadata metadata;
    private static Persistence persistence;
    private static DataManager dataManager;

    @BeforeAll
    public static void beforeAll() throws Exception {
        metadata = cont.metadata();
        persistence = cont.persistence();
        dataManager = AppBeans.get(DataManager.class);
    }

    @AfterAll
    public static void afterAll() throws Exception {
    }

    @Test
    public void testLoadUser() {
        try (Transaction tx = persistence.createTransaction()) {
            EntityManager em = persistence.getEntityManager();
            TypedQuery<User> query = em.createQuery(
                    "select u from sec$User u where u.login = :userLogin", User.class);
            query.setParameter("userLogin", "admin");
            List<User> users = query.getResultList();
            tx.commit();
            Assertions.assertEquals(1, users.size());
        }
    }
}