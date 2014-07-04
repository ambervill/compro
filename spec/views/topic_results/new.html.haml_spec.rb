require 'rails_helper'

RSpec.describe "topic_results/new", :type => :view do
  before(:each) do
    assign(:topic_result, TopicResult.new(
      :topic => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders new topic_result form" do
    render

    assert_select "form[action=?][method=?]", topic_results_path, "post" do

      assert_select "input#topic_result_topic_id[name=?]", "topic_result[topic_id]"

      assert_select "input#topic_result_student_id[name=?]", "topic_result[student_id]"

      assert_select "input#topic_result_grade[name=?]", "topic_result[grade]"
    end
  end
end
