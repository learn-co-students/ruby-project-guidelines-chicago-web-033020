class Student < ActiveRecord::Base
  has_many :records
  has_many :courses, through: :records

  def show_student_in2fo  #READ
    puts "Student account info includes name and city:"
    puts "Student ID: #{self.id}   Name: #{self.name}   City: #{self.city}"
  end

  def view_enrolled
    puts "\nCourses enrolled is (are):"
     enrolled_list = Record.all
     enrolled_list.each do |record| 
      if record.student_id == self.id
        puts "Course ID: #{record.course_id}   Course Name: #{record.course_name}"
         # to list courses that the specfic user is enrolled
      end 
     end
  end

  # def view_enrolled
  #   self.view_enrolled
  #   puts "\nCourses enrolled is (are):"
  #   self.records.each do |record|
  #   puts "Course ID: #{record.course.id} Course Name: #{record.course.name}" 
  #   end
  #   self.view_enrolled
  # end
   
  def self.list_all_courses #READ
    puts "\nAvailable courses are: "
    course_list = Course.all
    course_list.each do |course|
    puts "#{course.id}. #{course.name}"
    end
  end



  def enroll  #CREATE
    self.view_enrolled
    puts "Enter the course ID that you want to enroll: "
    enroll_course_id = gets.chomp
    # num = enroll_course_id.to_i
    #binding.pry
    #Record.create(course_id:c3.id, student_id: s2.id, course_name: c3.name, grade:"A", semester:"Spring2018")
    Record.create(course_id: enroll_course_id.to_i, student_id: self.id, course_name: courses.name, grade: "Waiting", semester: "Spring2020")
    puts "This is updated list for enrolled course"
    self.view_enrolled # see after adding the course
  end

  def update_city #Update   =w=b
    puts "You can update your city info"
    self.show_student_info  # Show student info first
    puts "Input your new city info"
    new_city = gets.chomp
    self.city = new_city
    self.save 
    puts "Your new city info is updated.\n"
    self.show_student_info # show updated city 
  end


  def drop  #Delete 
   self.view_enrolled
   puts "Enter the course ID that you want to drop: "
   drop_course_id = gets.chomp
   self.records.where(course_id: drop_course_id).destroy_all
   puts "Course dropped."
   self.view_enrolled #see after drop the course
   #self.Record.where(course_id: drop_course_id.to_i, student_id: self.id).destroy_all
    #https://apidock.com/rails/ActiveRecord/Relation/destroy_all
    # Person.where(age: 0..18).destroy_all
    # call viewEnrolled to see enrolled results
  end

  # def exit_app  #exit
  #   exit
  # end
end




