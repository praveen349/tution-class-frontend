package com.tution.bureau.initialize;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.LoggerFactory;

import com.tution.utils.TutionUtils;





public class StartUp implements ServletContextListener {
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(StartUp.class);

	public void contextInitialized(ServletContextEvent event) {
		try {
			TutionUtils.readProperties(getClass(), "config.properties", logger);
			TutionUtils.readPropertiesGit(getClass(), "git.properties", logger);
		} catch (Exception e) {
			logger.error("Exception in startup: " + e.getMessage());
		}
	}

	public void contextDestroyed(ServletContextEvent event) {

	}
}

