package com.example.Sweater.service;

import com.example.Sweater.domain.Message;
import com.example.Sweater.domain.User;
import com.example.Sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class MessageService {
    @Autowired
    private MessageRepo messageRepo;

    public Page<Message> messageList(Pageable pageable, String filter){
        if(filter != null && !filter.isEmpty()) {
            return messageRepo.findByTag(filter, pageable);
        }else{
            return messageRepo.findAll(pageable);
        }
    }

    public Page<Message> messageListForUser(Pageable pageable, User currentUser, User author) {
        return messageRepo.findByUser(pageable, author);
    }
}
