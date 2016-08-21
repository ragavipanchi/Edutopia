require 'rails_helper'

RSpec.describe "course_categories/edit", type: :view do
  before(:each) do
    @course_category = assign(:course_category, CourseCategory.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit course_category form" do
    render

    assert_select "form[action=?][method=?]", course_category_path(@course_category), "post" do

      assert_select "input#course_category_name[name=?]", "course_category[name]"

      assert_select "input#course_category_description[name=?]", "course_category[description]"
    end
  end
end
