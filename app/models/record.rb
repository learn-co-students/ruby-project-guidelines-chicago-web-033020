#student--->---record---<--- course
class Record < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
end
