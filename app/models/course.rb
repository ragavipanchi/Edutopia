class Course < ActiveRecord::Base
     has_many :student_courses
     has_many :students , through: :student_courses
     has_and_belongs_to_many :videos
     belongs_to :course_category

     validates :course_name, presence: true
     validates :course_description, presence: true
     validates :course_cost, presence: true
     validates :course_category_id, presence: true
     validates :author, presence: true
     validates :duration, presence: true


end
