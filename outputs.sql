--Q4
select stud_number, stud_fname || stud_lname, hall_name
from student s
join hall h on s.hall_number = h.hall_number
join address a on s.stud_postal_code = a.postal_code 
-- in appendix C, stu_postal_code is blank, thus no data populated, and no result will be returned.
-- comment out the line above, 3 records will return.
join programm p on p.prog_number = s.prog_number
where p.prog_name = 'BS in CS'
and a.place_name like '%Toronto%'; 
-- in appendix C, stu_postal_code is blank, thus no data populated, and no result will be returned.
-- comment out the line above, 3 records will return.

-- Q3
select stud_number, stud_fname, stud_lname, sex
from student 
where stud_lname in ( select stud_lname from student
                      group by stud_lname 
                      having count(stud_lname)>1) ;


-- Q5
select prog_name, c.crs_name, ps.ps_course_seq_number
from programm p
join program_structure ps on p.prog_number = ps.ps_prog_number
join course c on c.crs_code = ps.ps_course_code
where c.crs_code <> 'EN101';

-- Q6 vs Q5
-- When popluate the data based on Appendix C, there's NO crs_code of 'EN101'
-- So basically, Q6 and Q5 give the same outputs: 9 records returned. 
select prog_name, c.crs_name
from programm p
join program_structure ps on p.prog_number = ps.ps_prog_number
join course c on c.crs_code = ps.ps_course_code;

-- Q7
create view mathBSC4
  as select stud_number, stud_lname, stud_fname, stud_salutation, stud_address,
    stud_postal_code, stud_dob_year, s.hall_number, s.prog_number, prog_name, 
    hall_name
  from student s
  join programm p on p.prog_number = s.prog_number
  join hall h on h.hall_number = s.hall_number
  where p.prog_number = 'BSC4';

--SELECT * FROM mathBSC4;  Note: in Appendix C, no student in BSC4, thus no result will be returned.












