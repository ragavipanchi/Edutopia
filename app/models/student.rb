class Student < ActiveRecord::Base
    belongs_to :user
    has_many :student_courses
    has_many :courses, through: :student_courses

end
