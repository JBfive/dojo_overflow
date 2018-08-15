package com.jym.overflow.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jym.overflow.models.Answer;

@Repository
public interface AnswerRepository extends CrudRepository<Answer, Long> {

}
