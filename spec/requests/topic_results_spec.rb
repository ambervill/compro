require 'rails_helper'

RSpec.describe "TopicResults", :type => :request do
  describe "GET /topic_results" do
    it "works! (now write some real specs)" do
      get topic_results_path
      expect(response.status).to be(200)
    end
  end
end
