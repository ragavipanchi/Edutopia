require "rails_helper"

RSpec.describe CourseCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/course_categories").to route_to("course_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/course_categories/new").to route_to("course_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/course_categories/1").to route_to("course_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/course_categories/1/edit").to route_to("course_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/course_categories").to route_to("course_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/course_categories/1").to route_to("course_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/course_categories/1").to route_to("course_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/course_categories/1").to route_to("course_categories#destroy", :id => "1")
    end

  end
end
