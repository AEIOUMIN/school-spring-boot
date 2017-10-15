package com.bosic.school.web.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bosic.school.domain.Student;
import com.bosic.school.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/index/{id}")
	public String index(@PathVariable(required=true) Integer id, Model model) {
		int pageIndex = id;
		int pageSize = 10;

		Page<Student> students = studentService.findAll(new PageRequest((pageIndex-1), pageSize));
		
		model.addAttribute("students", students);
		return "student/index";
	}
	
	@RequestMapping("/create")
	public String create(){
		return "student/create";
	}
	
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable(required=true) Integer id, Model model) {
		Student student = studentService.findOne(id);
		
		model.addAttribute("student", student);
		
		return "student/edit";
	}
	
	@PostMapping("/save")
	public String save(Student Student) {
		studentService.save(Student);
		
		return "redirect:/student/index/1";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable(required=true) Integer id){
		
		studentService.delete(id);
		
		return "redirect:/student/index/1";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer[] ids){
		List<Student> students = new ArrayList<>();
		
		Arrays.asList(ids).forEach(id->{
			Student s = new Student();
				s.setId(id);
				students.add(s);
			});
		
		
		studentService.delete(students);
		
		return "redirect:/student/index/1";
	}
}
