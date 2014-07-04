require 'rails_helper'

RSpec.describe "lesson_results/edit", :type => :view do
  before(:each) do
    @lesson_result = assign(:lesson_result, LessonResult.create!(
      :lesson => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders the edit lesson_result form" do
    render

    assert_select "form[action=?][method=?]", lesson_result_path(@lesson_result), "post" do

      assert_select "input#lesson_result_lesson_id[name=?]", "lesson_result[lesson_id]"

      assert_select "input#lesson_result_student_id[name=?]", "lesson_result[student_id]"

      assert_select "input#lesson_result_grade[name=?]", "lesson_result[grade]"
    end
  end
end
