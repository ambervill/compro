require 'rails_helper'

RSpec.describe "lessons/index", :type => :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        :topic_id => 1,
        :discipline_id => 2,
        :caption => "Caption"
      ),
      Lesson.create!(
        :topic_id => 1,
        :discipline_id => 2,
        :caption => "Caption"
      )
    ])
  end

  it "renders a list of lessons" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
  end
end
