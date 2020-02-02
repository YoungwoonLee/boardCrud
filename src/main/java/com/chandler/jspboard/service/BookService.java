package com.chandler.jspboard.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chandler.jspboard.domain.Book;
import com.chandler.jspboard.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	BookRepository bookRepository;
	
	public List<Book> findAll() {
		Iterable<Book> list = bookRepository.findAll();
		List<Book> result = new ArrayList<>();
		list.forEach(result::add);
		
		return result;
	}
	
	public void add(Book book) {
		bookRepository.save(book);
	}
	
	public void update(Book book) {
		bookRepository.save(book);
	}
	
	public Book findOne(long id) {
		Optional<Book> book = bookRepository.findById(id);
		
		return book.get();
	}
	
	public void delete(long id) {
		bookRepository.deleteById(id);
	}
}
