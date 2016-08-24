class CourseCategory < ApplicationRecord
	has_many :courses
	mount_uploader :avatar, AvatarUploader
end
