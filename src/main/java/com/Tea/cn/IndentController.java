package com.Tea.cn;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/indent")
public class IndentController {
		@Autowired
		IndentMapper mapper;
	/*
	 * 增
	 */
		@PostMapping
		public String create(@RequestBody Indent i) { 
			mapper.save(i);
			return "ok";
		}
		
	
	/*
	 * 删
	 */
		@DeleteMapping("/{id}")
		public String remove(@PathVariable int id) {
			mapper.remove(id);
			return "ok";
		}
	
	
	/*
	 * 改
	 */
		@PutMapping("/{id}")
		public String update(
				@PathVariable int id,
				@RequestBody Indent i) {
			
			mapper.update(i);
			
			return "ok";
		}
	
	
	/*
	 * 查
	 */
	@GetMapping()
	public List<Indent> list() {
		return mapper.findAll();
	} 
	
	@GetMapping("/back")
	public List<Indent> list2() {
		return mapper.findAll2();
	}
	
	@GetMapping("/red")
	public List<Indent> list3() {
		return mapper.findAll3();
	}
	
	@GetMapping("/ning")
	public List<Indent> list4() {
		return mapper.findAll4();
	}
	
	@GetMapping("/green")
	public List<Indent> list5() {
		return mapper.findAll5();
	}
	
	@GetMapping("/you")
	public List<Indent> list6() {
		return mapper.findAll6();
	}
	
	@GetMapping("/mo")
	public List<Indent> list7() {
		return mapper.findAll7();
	}
	
	@GetMapping("/yellow")
	public List<Indent> list8() {
		return mapper.findAll8();
	}
	
	@GetMapping("/ku")
	public List<Indent> list9() {
		return mapper.findAll9();
	}
	
	@GetMapping("/{id}")
	public Indent findById(@PathVariable int id) {
		return mapper.load(id);
	}
}
