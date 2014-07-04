require "rails_helper"

RSpec.describe TaskResultsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/task_results").to route_to("task_results#index")
    end

    it "routes to #new" do
      expect(:get => "/task_results/new").to route_to("task_results#new")
    end

    it "routes to #show" do
      expect(:get => "/task_results/1").to route_to("task_results#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/task_results/1/edit").to route_to("task_results#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/task_results").to route_to("task_results#create")
    end

    it "routes to #update" do
      expect(:put => "/task_results/1").to route_to("task_results#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/task_results/1").to route_to("task_results#destroy", :id => "1")
    end

  end
end
