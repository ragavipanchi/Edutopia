class CourseCategory < ApplicationRecord
  has_many :courses
  mount_uploader :avatar, AvatarUploader

  validates :name, :description, presence: true
  validates_uniqueness_of :name
end
  