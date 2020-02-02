package com.chandler.jspboard.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chandler.jspboard.domain.Member;
import com.chandler.jspboard.repository.MemberRepository;

@Service
public class MemberService {
	@Autowired
	MemberRepository memberRepository;
	
	public List<Member> findAll() {
		Iterable<Member> list = memberRepository.findAll();
		List<Member> result = new ArrayList<>();
		list.forEach(result::add);
		
		return result;
	}
	
	public void add(Member member) {
		memberRepository.save(member);
	}
	
	public void update(Member member) {
		memberRepository.save(member);
	}
	
	public Member findOne(int id) {
		Optional<Member> member = memberRepository.findById(id);
		
		return member.get();
	}
	
	public void delete(int id) {
		memberRepository.deleteById(id);
	}
}
