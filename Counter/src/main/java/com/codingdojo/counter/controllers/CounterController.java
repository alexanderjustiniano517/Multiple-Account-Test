package com.codingdojo.counter.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class CounterController {
	
	@RequestMapping("")
	public String index(HttpSession session) {

		Integer count = 0;
		
		if(session.getAttribute("count")==null) {
			session.setAttribute("count", 0);			
		}
		
		else {
			count = (Integer) session.getAttribute("count");
			count++;
			session.setAttribute("count", count);
		}
		return "index.jsp";			
	}
	
	@RequestMapping("/counter")
	public String counterTracker() {
		return "counterTracker.jsp";
	}
	
	@RequestMapping("/plustwo")
	public String plusTwo(HttpSession session) {

		Integer count = 0;
		
		if(session.getAttribute("count")==null) {
			session.setAttribute("count", 0);			
		}
		
		else {
			count = (Integer) session.getAttribute("count");
			count++;
			count++;
			session.setAttribute("count", count);
		}
		return "plusTwo.jsp";
	}
	
	@RequestMapping("/reset")
	public String reset(HttpSession session) {
		session.invalidate();
		return "resetCounter.jsp";
	}
}