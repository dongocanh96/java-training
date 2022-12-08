package com.example.tutorials;

import com.example.tutorials.controller.TutorialController;
import com.example.tutorials.model.Tutorial;
import com.example.tutorials.repository.TutorialRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

@SpringBootTest
class TutorialsApplicationTests {

	@Autowired
	private TutorialController controller;

	@MockBean
	private TutorialRepository repository;

	@Test
	public void getTutorialsTest() {
		when(repository.findAll()).thenReturn(Stream
				.of(new Tutorial("Spring boot tutorial #7", "Description for tut #7", false),
				new Tutorial("Spring boot tutorial #8", "Description for tut #8", false))
				.collect(Collectors.toList()));
		assertEquals(2, repository.findAll().size());
	}

}
