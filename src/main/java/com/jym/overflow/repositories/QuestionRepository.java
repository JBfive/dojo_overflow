package com.jym.overflow.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jym.overflow.models.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Long> {

}
