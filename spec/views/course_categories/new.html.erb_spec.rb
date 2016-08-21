require 'rails_helper'

RSpec.describe "course_categories/new", type: :view do
  before(:each) do
    assign(:course_category, CourseCategory.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new course_category form" do
    render

    assert_select "form[action=?][method=?]", course_categories_path, "post" do

      assert_select "input#course_category_name[name=?]", "course_category[name]"

      assert_select "input#course_category_description[name=?]", "course_category[description]"
    end
  end
end
