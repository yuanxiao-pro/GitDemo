package controller;

import javax.servlet.http.HttpSession;

public class TestController {
	public void test(HttpSession session) {
		System.out.println("session test : "+session.getAttribute("username"));
	}
}
