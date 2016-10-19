class Student < ActiveRecord::Base
    belongs_to :user
    has_many :student_courses
    has_many :courses, through: :student_courses
    after_create :register_user
    def register_user
      u = create_user({name: name, email: email, password: "default", password_confirmation: "default"})
      u.save
      u.add_role :student
    end
end
