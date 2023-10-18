package com.quocar.insurance.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsuranceController {
	
	// 보험 화면 요청
	@RequestMapping("/insurance")
	public String member(HttpSession session) {
		
		return "insurance";
	}
}