package com.team08.todolist.controller;

import com.team08.todolist.model.History;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/histories")
public class ApiHistoryController {

    @GetMapping
    public List<History> list() {
        List<History> histories = new ArrayList<>();
        histories.add(new History(1, "August", "title1", 0, null, 1, LocalDateTime.now()));
        histories.add(new History(2, "roach", "title2", 3, 1, 2, LocalDateTime.now()));
        return histories;
    }
}
