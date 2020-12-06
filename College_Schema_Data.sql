--Q2: insert data


-- 1. student
insert all
into student (stud_number, stud_fname, stud_lname, prog_number, hall_number, stud_dob_year)
  VALUES (100, 'Foster', 'Bruce', 'BSC1', 'Chan', 1978)
into student (stud_number, stud_fname, stud_lname, prog_number, hall_number, stud_dob_year)
  VALUES (105, 'Jones', 'Bruce', 'BSC2', 'Chan', 1970)
into student (stud_number, stud_fname, stud_lname, prog_number, hall_number, stud_dob_year)
  VALUES (110, 'James', 'Enos', 'BSC1', 'Urv', 1966)
into student (stud_number, stud_fname, stud_lname, prog_number, hall_number, stud_dob_year)
  VALUES (115, 'James', 'Yvonne', 'BSC1', 'Mars', 1970)
into student (stud_number, stud_fname, stud_lname, prog_number, hall_number, stud_dob_year)
  VALUES (120, 'Douglas', 'Henry', 'BSC2', 'Urv', 1970)
into student (stud_number, stud_fname, stud_lname, prog_number, hall_number, stud_dob_year)
  VALUES (125, 'Henry', 'Suzanne', 'BSC2', 'Urv', 1968)
into student (stud_number, stud_fname, stud_lname, prog_number, hall_number, stud_dob_year)
  VALUES (130, 'Lambert', 'Cecille', 'BSC5', 'Mars', 1978)
select * from dual;

--select * from student;


--2. department
insert all
into department (dept_number, dept_name, dept_head, dept_div_number)
  values ('MTH', 'Mathematics', 'S10', 'D01')
into department (dept_number, dept_name, dept_head, dept_div_number)
  values ('CSC', 'Computer Science', 'S15', 'D01')
into department (dept_number, dept_name, dept_head, dept_div_number)
  values ('PHY', 'Physics', 'S05', 'D01')
into department (dept_number, dept_name, dept_head, dept_div_number)
  values ('MGT', 'Management Studies', 'S20', 'D01')
into department (dept_number, dept_name, dept_head, dept_div_number)
  values ('MSC', 'Music', 'S10', 'D02')
select * from dual;

--select * from department;

-- 3. programm
insert all 
into programm (prog_number, prog_name) values ('BSC1', 'BS in MIS')
into programm (prog_number, prog_name) values ('BSC2', 'BS in CS')
into programm (prog_number, prog_name) values ('BSC3', 'BS in EE')
into programm (prog_number, prog_name) values ('BSC4', 'BS in Math')
into programm (prog_number, prog_name) values ('BSC5', 'BS in CS and Math')   --Note $ for subsititution
into programm (prog_number, prog_name) values ('BSC6', 'BS in CS and E')
into programm (prog_number, prog_name) values ('BSC7', 'BS in Chemistry')
into programm (prog_number, prog_name) values ('BSC8', 'BS in Physics')
select * from dual;

--select * from programm;

-- 4. course
insert all
into course (crs_code, crs_name) values ('CS100', 'Intro to CS')
into course (crs_code, crs_name) values ('CS210', 'Data Structures')
into course (crs_code, crs_name) values ('CS220', 'Visual Programming')
into course (crs_code, crs_name) values ('CS330', 'Software Engineering')
into course (crs_code, crs_name) values ('CS360', 'Database Systems')
into course (crs_code, crs_name) values ('M100', 'Calculus I')
into course (crs_code, crs_name) values ('M110', 'Math')
into course (crs_code, crs_name) values ('M200', 'Calculus II')
into course (crs_code, crs_name) values ('M210', 'Linear Algebra')
select * from dual;

--select * from course;

-- 5. hall
insert all 
into hall (hall_number, hall_name) values ('Chan', 'Chancellor')
into hall (hall_number, hall_name) values ('Len', 'Lenheim')
into hall (hall_number, hall_name) values ('Mars', 'Mary Seacole')
into hall (hall_number, hall_name) values ('Urv', 'Urvine')
select * from dual;

--select * from hall;

-- 6. staff
insert all
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S05', 'Prof.', 'Farr', 'Christine')
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S10', 'Dr.', 'Phillips', 'Paul')
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S15', 'Dr.', 'Foster', 'Scott')
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S20', 'Prof.', 'Gaur', 'Hans')
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S25', 'Dr.', 'Lambert', 'Bruce')
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S30', 'Dr.', 'Henry', 'Carolyn')
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S35', 'Dr.', 'Amstrong', 'Enid')
into staff (staff_number, staff_salutation, staff_lname, staff_fname)
  values ('S40', 'Dr.', 'Golding', 'Calvin')
select * from dual;

--select * from staff;

-- 7. division 
-- &. to escape & substitution or '||chr(38)||' 

insert all 
into division (div_number, div_name, div_head) 
  values ('D01', 'Pure &. Applied Science', 'S25')
into division (div_number, div_name, div_head) 
  values ('D02', 'Arts &. Humanities', 'S30')
into division (div_number, div_name, div_head) 
  values ('D03', 'Education &. Psychology', 'S35')
select * from dual;

--select * from division;


--8. Program_Structure
insert all
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC1', 'M100', 01)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC1', 'M200', 02)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC1', 'CS100', 03)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC1', 'CS210', 04)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC1', 'CS220', 05)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC2', 'CS100', 01)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC2', 'CS210', 02)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC2', 'CS220', 03)
into program_structure (ps_prog_number, ps_course_code, ps_course_seq_number)
  values ('BSC2', 'M100', 16)
select * from dual;

--select * from program_structure;

