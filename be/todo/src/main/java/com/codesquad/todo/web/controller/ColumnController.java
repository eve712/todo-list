package com.codesquad.todo.web.controller;

import com.codesquad.todo.web.domain.Column;
import com.codesquad.todo.web.domain.Task;
import com.codesquad.todo.web.domain.User;
import com.codesquad.todo.web.service.dto.ColumnDto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/columns")
public class ColumnController {

    @GetMapping
    public List<ColumnDto> showColumnList() {
        List<ColumnDto> columnList = new ArrayList<>();
        User author = new User(1L, "라쿠운", "Racoon", "1234", "");

        Column todoColumn = new Column(1L, "TODO");
        todoColumn.getTaskList().add(new Task(1L, "task1", "taskContent1", author, todoColumn));
        todoColumn.getTaskList().add(new Task(2L, "task2", "taskContent2", author, todoColumn));
        columnList.add(new ColumnDto(todoColumn));

        Column inProgressColumn = new Column(2L, "IN_PROGRESS");
        inProgressColumn.getTaskList().add(new Task(3L, "task3", "taskContent3", author, inProgressColumn));
        columnList.add(new ColumnDto(inProgressColumn));

        return columnList;
    }

}
