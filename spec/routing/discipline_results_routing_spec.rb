require "rails_helper"

RSpec.describe DisciplineResultsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/discipline_results").to route_to("discipline_results#index")
    end

    it "routes to #new" do
      expect(:get => "/discipline_results/new").to route_to("discipline_results#new")
    end

    it "routes to #show" do
      expect(:get => "/discipline_results/1").to route_to("discipline_results#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/discipline_results/1/edit").to route_to("discipline_results#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/discipline_results").to route_to("discipline_results#create")
    end

    it "routes to #update" do
      expect(:put => "/discipline_results/1").to route_to("discipline_results#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/discipline_results/1").to route_to("discipline_results#destroy", :id => "1")
    end

  end
end
