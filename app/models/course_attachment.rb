class CourseAttachment < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  belongs_to :course

  validates :course_id, presence: true
end
