package com.skilldistillery.health.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.health.entities.HealthLog;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class HealthLogTest {

		private static EntityManagerFactory emf;
		private EntityManager em;
		private HealthLog healthLog;
		
		@BeforeAll
		static void setUpBeforeClass() throws Exception {
		    emf = Persistence.createEntityManagerFactory("JPAHealth");
		}

		@AfterAll
		static void tearDownAfterClass() throws Exception {
		    emf.close();
		}
		
		@BeforeEach
		void setUp() throws Exception {
		    em = emf.createEntityManager();
		    healthLog = em.find(HealthLog.class, 2);
		}

		@AfterEach
		void tearDown() throws Exception {
		    em.close();
		    healthLog = null;
		}

		@Test
		void test_health_basic_mappings() {
			assertNotNull(healthLog);
			assertEquals("Mary", healthLog.getUserName());

	}

}
