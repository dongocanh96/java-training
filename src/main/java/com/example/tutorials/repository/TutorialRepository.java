package com.example.tutorials.repository;

import java.util.List;

import com.example.tutorials.model.Tutorial;

public interface TutorialRepository {
    List<Tutorial> findByPublished(boolean published);
    List<Tutorial> findByTitleContaining(String title);
}
