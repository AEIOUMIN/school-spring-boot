package com.bosic.school.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "student_name")
	private String studentName;
	@Column
	private String gender;
	@Temporal(TemporalType.DATE)
	@Column
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	@Column
	private String mobile;
	@Column
	private String email;
	@Column
	private String street;
	@Column
	private String city;
	@Column
	private String province;

	public Student() {
	}

	public Student(Integer id, String studentName, String gender, Date birthday, String mobile, String email,
			String street, String city, String province) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.gender = gender;
		this.birthday = birthday;
		this.mobile = mobile;
		this.email = email;
		this.street = street;
		this.city = city;
		this.province = province;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", studentName=" + studentName + ", gender=" + gender + ", birthday=" + birthday
				+ ", mobile=" + mobile + ", email=" + email + ", street=" + street + ", city=" + city + ", province="
				+ province + "]";
	}
}
