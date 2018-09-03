package com.ict.erp;

import java.lang.reflect.Method;

public class ReflTest {
	public static void main(String[] args) {
		String classPath = "com.ict.erp.Person";
		try {
			Class clazz = Class.forName(classPath);
			Object obj = clazz.newInstance();
			Method[] methods = clazz.getMethods();
			System.out.println(obj);
			
			for(Method mt:methods) {
				System.out.println(mt.getName());
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
}
