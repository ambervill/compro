require 'rails_helper'

RSpec.describe "task_results/new", :type => :view do
  before(:each) do
    assign(:task_result, TaskResult.new(
      :task => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders new task_result form" do
    render

    assert_select "form[action=?][method=?]", task_results_path, "post" do

      assert_select "input#task_result_task_id[name=?]", "task_result[task_id]"

      assert_select "input#task_result_student_id[name=?]", "task_result[student_id]"

      assert_select "input#task_result_grade[name=?]", "task_result[grade]"
    end
  end
end
