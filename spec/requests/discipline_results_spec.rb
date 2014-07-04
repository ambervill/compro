require 'rails_helper'

RSpec.describe "DisciplineResults", :type => :request do
  describe "GET /discipline_results" do
    it "works! (now write some real specs)" do
      get discipline_results_path
      expect(response.status).to be(200)
    end
  end
end
