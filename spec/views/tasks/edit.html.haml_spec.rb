require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :lesson => nil,
      :level => 1,
      :xml => "MyText"
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_lesson_id[name=?]", "task[lesson_id]"

      assert_select "input#task_level[name=?]", "task[level]"

      assert_select "textarea#task_xml[name=?]", "task[xml]"
    end
  end
end
