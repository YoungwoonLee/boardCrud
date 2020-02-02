package com.chandler.jspboard.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chandler.jspboard.domain.Member;

@Repository
public interface MemberRepository extends CrudRepository<Member, Integer>{
	
}