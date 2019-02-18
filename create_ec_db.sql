
create table students (
    s_id serial,
    f_name varchar(20),
    l_name varchar(20),
    dob date,
    year char(2),
    email varchar(20),
    primary key (s_id)
);

create table enrolled (
    course_id int,
    student_id int,
    completed char(1),
    grade char(2),
    primary key (course_id, student_id),
    foreign key (course_id) references courses(c_id),
    foreign key (student_id) references students(s_id)
);

create table courses (
    c_id serial,
    course_num varchar(10),
    course_title varchar(50),
    cap int,
    semester char(2),
    year int,
    start_time time,
    end_time time,
    dept_id int,
    primary key (c_id),
    foreign key (dept_id) references departments(d_id)
);

create table departments (
    d_id serial,
    title varchar(30),
    convener int,
    office varchar(50),
    contact varchar(30),
    primary key(dept_id),
    foreign key (convener) references faculty(f_id)
);

create table faculty (
    f_id serial,
    f_name varchar(30),
    l_name varchar(30),
    email varchar(30),
    type char(2),
    designation varchar(20),
    primary key (f_id)
);

create table worksfor (
    faculty_id int,
    department_id int,
    foreign key (faculty_id) references faculty(f_id),
    foreign key (department_id) references departments(d_id)
);

create table offers(
    course_id int,
    faculty_id int,
    foreign key (course_id) references courses(c_id),
    foreign key (faculty_id) references faculty(f_id)
);



