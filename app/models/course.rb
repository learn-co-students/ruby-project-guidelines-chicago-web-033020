class Course < ActiveRecord::Base
  has_many :records
  has_many :students, through: :records

#   # Show all courses
#   def self.list_all_courses #READ
#     puts "\nAvailable courses are: "
#     course_list.each do |course|
#     puts "#{course.id}. #{course.name}"
#     end
#   end
# end

# def view_enrolled
#   puts "\nCourses enrolled is (are):"
#   self.records.each do |record|
#   puts "Course ID: #{record.course.id} Course Name: #{record.course.name}" 

  def self.list_all_courses #READ
    puts "\nAvailable courses are: "
    course_list = Course.all
    course_list.each do |course|
    puts "#{course.id}. #{course.name}"
    end
  end
end



 