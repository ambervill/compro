require 'rails_helper'

RSpec.describe "tasks/new", :type => :view do
  before(:each) do
    assign(:task, Task.new(
      :lesson => nil,
      :level => 1,
      :xml => "MyText"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_lesson_id[name=?]", "task[lesson_id]"

      assert_select "input#task_level[name=?]", "task[level]"

      assert_select "textarea#task_xml[name=?]", "task[xml]"
    end
  end
end
