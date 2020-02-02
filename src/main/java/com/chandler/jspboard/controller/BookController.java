package com.chandler.jspboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chandler.jspboard.domain.Book;
import com.chandler.jspboard.service.BookService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	
	@GetMapping("/book/list")
	public String list(Model model){
		List<Book> list = bookService.findAll();
		model.addAttribute("list",list);
		return "book/list";
	}
	
	@GetMapping(value="/book/add")
	public String add(){
		return "book/add";
	}
	
	@PostMapping(value="/book/add")
	public String postAdd(Book book){
		bookService.add(book);
		return "redirect:/book/list";
	}
	
	@GetMapping(value="/book/mod/{id}")
	public String mod(@PathVariable Long id, Model model){

		Book book = bookService.findOne(id);
		model.addAttribute("data",book);
		return "book/mod";
	}
	
	@PostMapping(value="/book/mod")
	public String postMod(Book book){
		bookService.update(book);
		return "redirect:/book/list";
	}
	
	@RequestMapping("/book/del/{id}")
	public String del(@PathVariable Long id){
		bookService.delete(id);
		return "redirect:/book/list";
	}
}
