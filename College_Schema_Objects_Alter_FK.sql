-- Alter table add FK

ALTER TABLE student
  ADD sex varchar2(10);

ALTER TABLE student
  ADD CONSTRAINT student_address_fk 
  FOREIGN KEY (stud_postal_code) 
  REFERENCES address(postal_code); 

  
ALTER TABLE student
  ADD CONSTRAINT student_hall_fk 
  FOREIGN KEY (hall_number) 
  REFERENCES hall(hall_number); 
  
ALTER TABLE student
  ADD CONSTRAINT student_prog_fk 
  FOREIGN KEY (prog_number) 
  REFERENCES programm(prog_number); 


ALTER TABLE department
  ADD CONSTRAINT dept_div_fk 
  FOREIGN KEY (dept_div_number) 
  REFERENCES division(div_number); 
  
ALTER TABLE department
  ADD CONSTRAINT dept_staff_fk 
  FOREIGN KEY (dept_head) 
  REFERENCES staff(staff_number);

alter table department
  drop column chair_number;
  

  