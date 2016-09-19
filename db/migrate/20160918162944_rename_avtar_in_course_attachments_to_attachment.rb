class RenameAvtarInCourseAttachmentsToAttachment < ActiveRecord::Migration[5.0]
  def change
    rename_column :course_attachments, :avatar, :attachment
  end
end
