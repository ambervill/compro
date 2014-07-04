require 'rails_helper'

RSpec.describe "lesson_results/new", :type => :view do
  before(:each) do
    assign(:lesson_result, LessonResult.new(
      :lesson => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders new lesson_result form" do
    render

    assert_select "form[action=?][method=?]", lesson_results_path, "post" do

      assert_select "input#lesson_result_lesson_id[name=?]", "lesson_result[lesson_id]"

      assert_select "input#lesson_result_student_id[name=?]", "lesson_result[student_id]"

      assert_select "input#lesson_result_grade[name=?]", "lesson_result[grade]"
    end
  end
end
