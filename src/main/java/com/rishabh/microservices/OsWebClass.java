package com.rishabh.microservices;

import com.rishabh.commons.OsCommonClass;

class OsWebClass{
	
	public static void main(String[] args) {
		new OsWebClass().m2();
	}
	
	public void m2() {
		OsCommonClass commonClass = new OsCommonClass();
		commonClass.m1();
		System.out.println("I am method 2");
	}
}