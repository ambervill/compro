require "rails_helper"

RSpec.describe TopicResultsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/topic_results").to route_to("topic_results#index")
    end

    it "routes to #new" do
      expect(:get => "/topic_results/new").to route_to("topic_results#new")
    end

    it "routes to #show" do
      expect(:get => "/topic_results/1").to route_to("topic_results#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/topic_results/1/edit").to route_to("topic_results#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/topic_results").to route_to("topic_results#create")
    end

    it "routes to #update" do
      expect(:put => "/topic_results/1").to route_to("topic_results#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/topic_results/1").to route_to("topic_results#destroy", :id => "1")
    end

  end
end
