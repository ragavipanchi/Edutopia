module CourseAttachmentsHelper
  def courses_list
    Course.pluck(:course_name, :id)
  end
end
