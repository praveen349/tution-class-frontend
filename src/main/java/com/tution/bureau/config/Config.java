package com.tution.bureau.config;

import java.util.HashSet;
import java.util.Set;

public class Config {

	public static String domain = "localhost:8080/tution-bureau";
	public static boolean dev = true;
	public static String version = "1";
	public static String IMAGE_PATH = "/resources/tution";
	 
	//public static String PAYMENT_TYPE = "test"; 
	
	//css and js version
	
	public static String cssAndJsVersion = "1";

	public static String PROTOCOL = "http";
	
	public static String HOST = "localhost:8080";
	public static String DOMAIN = "localhost:8080/lyve-fe";
	public static String SYSTEM_HOST = "NA";
	public static String PROCESS_NAME = "NA";
	public static String DB_NAME = "tution-bureau";
	public static int cph = 500;
	public static boolean replication = true;
	public static int port = 27017;
	public static Set<String> MONGOHOST = new HashSet<String>();


}

