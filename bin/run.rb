require_relative '../config/environment'
# require "tty-prompt"
# prompt = TTY::Prompt.new
puts "This APP records students' course history"
puts "-----------------------------------------\n"
puts "Input your name."


def account_existence
  student_name = gets.chomp
  user = Student.find_by(name: student_name)
  if user
    puts "Hello, #{user.name}.\n"
  else
    puts "We don't have your info,"
    puts "please input your city to create a new account."
    city = gets.chomp
    user = Student.create(name: student_name, city: city)
    puts "Hello, #{user.name}.\n"
  end
  return user
end
user = account_existence


def selection
  puts <<-DOC
  \nPlease input the number of selections:
  1. Enroll into a course 
  2. Drop a course
  3. Update your account info (city info)
  4. View available courses
  5. View enrolled course
  6. Exit APP
  Input:  
  DOC
  
end
selection

loop do   #Keep in menu
  input = gets.chomp
  case input.to_i
  when 1
    Course.list_all_courses 
    user.enroll
#    user.view_enrolled
    selection
  when 2
    user.drop
    selection
  when 3
    user.update_city
    selection
  when 4    
    Course.list_all_courses
     selection
  when 5
    user.view_enrolled
    selection
  when 6
    p "Thank you"
    exit
  else
    p "Not available. Please Reselect."
    selection
  end
end
