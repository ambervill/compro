require 'rails_helper'

RSpec.describe "lessons/show", :type => :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :topic_id => 1,
      :discipline_id => 2,
      :caption => "Caption"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Caption/)
  end
end
