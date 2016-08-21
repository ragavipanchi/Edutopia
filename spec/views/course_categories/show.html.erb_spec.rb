require 'rails_helper'

RSpec.describe "course_categories/show", type: :view do
  before(:each) do
    @course_category = assign(:course_category, CourseCategory.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
