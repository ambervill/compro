require 'rails_helper'

RSpec.describe "lessons/new", :type => :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :topic_id => 1,
      :discipline_id => 1,
      :caption => "MyString"
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input#lesson_topic_id[name=?]", "lesson[topic_id]"

      assert_select "input#lesson_discipline_id[name=?]", "lesson[discipline_id]"

      assert_select "input#lesson_caption[name=?]", "lesson[caption]"
    end
  end
end
