class Course < ActiveRecord::Base
  has_many :records
  has_many :students, through: :records

  def self.list_all_courses #READ
    puts "\nAvailable courses are: "
    course_list = Course.all
    course_list.each do |course|
    puts "#{course.id}. #{course.name}"
    end
  end
end



 
