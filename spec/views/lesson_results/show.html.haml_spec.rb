require 'rails_helper'

RSpec.describe "lesson_results/show", :type => :view do
  before(:each) do
    @lesson_result = assign(:lesson_result, LessonResult.create!(
      :lesson => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
