package com.chandler.jspboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chandler.jspboard.domain.Member;
import com.chandler.jspboard.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/member/list")
	public String list(Model model){
		List<Member> list = memberService.findAll();
		model.addAttribute("list",list);
		return "member/list";
	}

	@GetMapping(value="/member/add")
	public String add(){
		return "member/add";
	}

	@PostMapping(value="/member/add")
	public String postAdd(Member member){
		memberService.add(member);
		return "redirect:/member/list";
	}

	@GetMapping(value="/member/mod/{id}")
	public String mod(@PathVariable int id, Model model){

		Member member = memberService.findOne(id);
		model.addAttribute("data",member);
		return "member/mod";
	}

	@PostMapping(value="/member/mod")
	public String postMod(Member member){
		memberService.update(member);
		return "redirect:/member/list";
	}

	@RequestMapping("/member/del/{id}")
	public String del(@PathVariable int id){
		memberService.delete(id);
		return "redirect:/member/list";
	}
}
