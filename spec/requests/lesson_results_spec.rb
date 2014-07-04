require 'rails_helper'

RSpec.describe "LessonResults", :type => :request do
  describe "GET /lesson_results" do
    it "works! (now write some real specs)" do
      get lesson_results_path
      expect(response.status).to be(200)
    end
  end
end
