package com.jym.overflow.repositories;



import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jym.overflow.models.Tag;

@Repository
public interface TagRepository extends CrudRepository<Tag, Long> {

	

}
