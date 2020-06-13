package com.Tea.cn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home() {
		return "index.html";
	}

	@GetMapping("/customer")
	public String customer() {
		return "customer.html";
	}

	@GetMapping("/1")
	public String serve() {
		return "serve.html";
	}

	@GetMapping("/history")
	public String history() {
		return "history.html";
	}

	@GetMapping("/info")
	public String info() {
		return "info.html";
	}
}
