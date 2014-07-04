require 'rails_helper'

RSpec.describe "task_results/edit", :type => :view do
  before(:each) do
    @task_result = assign(:task_result, TaskResult.create!(
      :task => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders the edit task_result form" do
    render

    assert_select "form[action=?][method=?]", task_result_path(@task_result), "post" do

      assert_select "input#task_result_task_id[name=?]", "task_result[task_id]"

      assert_select "input#task_result_student_id[name=?]", "task_result[student_id]"

      assert_select "input#task_result_grade[name=?]", "task_result[grade]"
    end
  end
end
