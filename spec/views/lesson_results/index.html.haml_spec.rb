require 'rails_helper'

RSpec.describe "lesson_results/index", :type => :view do
  before(:each) do
    assign(:lesson_results, [
      LessonResult.create!(
        :lesson => nil,
        :student => nil,
        :grade => 1
      ),
      LessonResult.create!(
        :lesson => nil,
        :student => nil,
        :grade => 1
      )
    ])
  end

  it "renders a list of lesson_results" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
