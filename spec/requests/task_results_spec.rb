require 'rails_helper'

RSpec.describe "TaskResults", :type => :request do
  describe "GET /task_results" do
    it "works! (now write some real specs)" do
      get task_results_path
      expect(response.status).to be(200)
    end
  end
end
