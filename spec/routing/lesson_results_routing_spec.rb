require "rails_helper"

RSpec.describe LessonResultsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lesson_results").to route_to("lesson_results#index")
    end

    it "routes to #new" do
      expect(:get => "/lesson_results/new").to route_to("lesson_results#new")
    end

    it "routes to #show" do
      expect(:get => "/lesson_results/1").to route_to("lesson_results#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lesson_results/1/edit").to route_to("lesson_results#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lesson_results").to route_to("lesson_results#create")
    end

    it "routes to #update" do
      expect(:put => "/lesson_results/1").to route_to("lesson_results#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lesson_results/1").to route_to("lesson_results#destroy", :id => "1")
    end

  end
end
