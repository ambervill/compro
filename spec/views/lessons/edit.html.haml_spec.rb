require 'rails_helper'

RSpec.describe "lessons/edit", :type => :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :topic_id => 1,
      :discipline_id => 1,
      :caption => "MyString"
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input#lesson_topic_id[name=?]", "lesson[topic_id]"

      assert_select "input#lesson_discipline_id[name=?]", "lesson[discipline_id]"

      assert_select "input#lesson_caption[name=?]", "lesson[caption]"
    end
  end
end
