package com.chandler.jspboard.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chandler.jspboard.domain.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long>{

}
