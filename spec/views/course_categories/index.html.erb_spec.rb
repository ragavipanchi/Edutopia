require 'rails_helper'

RSpec.describe "course_categories/index", type: :view do
  before(:each) do
    assign(:course_categories, [
      CourseCategory.create!(
        :name => "Name",
        :description => "Description"
      ),
      CourseCategory.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of course_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
