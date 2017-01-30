class EachClassFacultySubject < ApplicationRecord
  belongs_to :faculty
  belongs_to :subject
  belongs_to :each_class
end
