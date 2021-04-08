package com.codesquad.esfj.todolist.task;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

@Component
public class TaskRepository {
    private Map<Long, Task> tasks = new ConcurrentHashMap<Long, Task>() {{
        put(1L, new Task(1L, "title1", "content1", "writer1"));
        put(2L, new Task(2L, "title2", "content2", "writer2"));
    }};

    public List<Task> findAllByNotDeleted() {
        return tasks.values().stream()
                .filter(task -> !task.isDeleted())
                .collect(Collectors.toList());
    }

    public Task findOne(long id) {
        return tasks.get(id);
    }

    public Task save(Task newTask) {
        if (newTask.getId() == null) {
            newTask.setId(tasks.size() + 1L);
        }
        tasks.put(newTask.getId(), newTask);
        return newTask;
    }
}
