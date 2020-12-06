--Mengxi Xu Assignment 2

--This script is to create the tables, but constarint foreign keys of student and department tables are not yet added,
--will add foreign keys in another script to these two tables after poplutae the data.

--drop table student;
--drop table department;
--drop table address;
--drop table programm;
--drop table hall;
--drop table country;
--drop table division;
--drop table staff;
--drop table course;
--drop table program_structure;


create table address(
  postal_code     char(3)
    CONSTRAINT    address_postal_code PRIMARY KEY,
  place_name      varchar2(200) not null,
  province        varchar2(30) not null,
  constraint address_postal_code_ck check (length(postal_code)=3));

create table programm(
  prog_number     char(5) 
    constraint    programm_prog_number primary key,
  prog_name       varchar2(100) not null unique);
  
create table hall(
  hall_number     varchar2(5)
    constraint    hall_hall_number primary key,
  hall_name       varchar2(100) not null unique);
  
create table country(
  cntry_code      char(5)
    constraint    country_cntry_code primary key,
  cntry_name      varchar(50) not null unique);

create table student(
  stud_number     number(5)
    constraint    student_stud_number primary key,
  stud_fname      varchar2(30) not null,
  stud_lname      varchar2(30) not null,
  stud_salutation varchar2(5),
  stud_address    varchar2(100),
  stud_postal_code   char(3),
    --CONSTRAINT    student_address_fk REFERENCES address (postal_code),
  stud_dob_year   number(4),
  hall_number     varchar2(5) not null,
    --CONSTRAINT    student_hall_fk REFERENCES hall (hall_number),
  prog_number     char(5) not null,
    --CONSTRAINT    student_program_fk REFERENCES programm (prog_number),
  cntry_code      char(5),
    --CONSTRAINT    student_country_fk REFERENCES country (cntry_code),
  CONSTRAINT stud_salutation_ck check 
    (stud_salutation in ('Mr.', 'Ms.', 'Miss.', 'Hon.', 'Rev.', 'Prof.', 'Dr.')),
  CONSTRAINT stud_dob_year CHECK (stud_dob_year>'1900') -- and stud_dob_year<to_char(sysdate, 'YYYY'))
  );
   --select to_char(sysdate, 'YYYY') from dual; 
  
create table division(
   div_number      char(3)
      constraint   division_div_number primary key,
   div_name        varchar2(50) not null unique,
   div_head        char(3) default null);

create table staff(
  staff_number     char(3)
    constraint     staff_staff_number primary key,
  staff_salutation varchar2(5),
  staff_lname      varchar2(30) not null,
  staff_fname      varchar2(30) not null,
  constraint       staff_number_ck CHECK (staff_number like 'S%'),
  CONSTRAINT       staff_salutation_ck check 
    (staff_salutation in ('Mr.', 'Ms.', 'Miss.', 'Hon.', 'Rev.', 'Prof.', 'Dr.') ) );
  
create table department(
  dept_number      char(3)
    constraint     depatment_dept_name primary key,
  dept_name        varchar2(100)  not null,
  dept_head        char(3)   not null,
    --constraint     department_staff_fk REFERENCES staff (staff_number),
  dept_div_number  char(3)   not null,
    --constraint     department_division_fk REFERENCES division (div_number),
  chair_number     char(3) );
    --constraint     depatment_staff_fk REFERENCES staff(staff_number));
  
create table course(
  crs_code         char(5)
    constraint     course_crs_code primary key,
  crs_name         varchar2(50) not null unique);

create table program_structure(
  ps_prog_number   char(4),
  ps_course_code   char(5),
  ps_course_seq_number  number(3),
  constraint program_structure_pk primary key (ps_prog_number, ps_course_code));
  



  
  