package com.bosic.school.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bosic.school.domain.Student;
import com.bosic.school.domain.StudentRepository;

@Service
@Transactional(readOnly=true)
public class StudentService {
	@Autowired
	private StudentRepository studentRepository;
	
	@Transactional
	public void save(Student student){
		studentRepository.save(student);
	}
	
	@Transactional
	public void delete(Integer id){
		studentRepository.delete(id);
	}
	
	@Transactional
	public void delete(Iterable<Student> students){
		studentRepository.deleteInBatch(students);
	}
	
	public Student findOne(Integer id){
		return studentRepository.findOne(id);
	}
	
	public Student findOne(Example<Student> student){
		return studentRepository.findOne(student);
	}
	
	public Page<Student> findAll(Pageable pageable){
		return studentRepository.findAll(pageable);
	}
}
