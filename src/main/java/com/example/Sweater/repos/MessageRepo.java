package com.example.Sweater.repos;

import org.springframework.data.repository.CrudRepository;
import com.example.Sweater.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
}
