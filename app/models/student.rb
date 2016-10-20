class Student < ActiveRecord::Base
    belongs_to :user
    belongs_to :college
    has_many :student_courses
    has_many :courses, through: :student_courses

    after_create :register_user
    def register_user
      #require "pry"
      #binding.pry
      u = create_user({name: name, email: email, password: "default", password_confirmation: "default"})
      u.save
      u.add_role :student
    end
end
