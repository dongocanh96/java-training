package com.example.tutorials.repository;

import jakarta.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.tutorials.model.TutorialDetails;

public interface TutorialDetalsRepository extends JpaRepository<TutorialDetails, Long> {
    @Transactional
    void deleteById(long id);

    @Transactional
    void deleteByTutorialId(long tutorialId);
}
