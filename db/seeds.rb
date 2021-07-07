c1 = Course.create(name: "Math 101", department: "Math")
c2 = Course.create(name: "Math 102", department: "Math")
c3 = Course.create(name: "ENG 101", department: "English")
c4 = Course.create(name: "ENG 102", department: "English")
c5 = Course.create(name: "CS 101", department: "Computer Science")
c6 = Course.create(name: "CS 102", department: "Computer Science")

s1 = Student.create(name: "Yann", city: "Chicago")
s2 = Student.create(name: "Amy", city: "Aurora")
s3 = Student.create(name: "Brown", city: "Naperville")



Record.create(course_id:c1.id, student_id: s2.id, course_name: c1.name, grade:"B", semester:"Fall2018")
Record.create(course_id:c1.id, student_id: s3.id, course_name: c1.name, grade:"A", semester:"Fall2018")
Record.create(course_id:c2.id, student_id: s1.id, course_name: c2.name, grade:"C", semester:"Spring2018")
Record.create(course_id:c3.id, student_id: s1.id, course_name: c3.name, grade:"C", semester:"Spring2018")
Record.create(course_id:c1.id, student_id: s2.id, course_name: c1.name, grade:"B", semester:"Fall2016")
Record.create(course_id:c2.id, student_id: s2.id, course_name: c2.name, grade:"D", semester:"Spring2015")
Record.create(course_id:c3.id, student_id: s2.id, course_name: c3.name, grade:"A", semester:"Spring2018")


