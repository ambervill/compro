require 'rails_helper'

RSpec.describe "topic_results/edit", :type => :view do
  before(:each) do
    @topic_result = assign(:topic_result, TopicResult.create!(
      :topic => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders the edit topic_result form" do
    render

    assert_select "form[action=?][method=?]", topic_result_path(@topic_result), "post" do

      assert_select "input#topic_result_topic_id[name=?]", "topic_result[topic_id]"

      assert_select "input#topic_result_student_id[name=?]", "topic_result[student_id]"

      assert_select "input#topic_result_grade[name=?]", "topic_result[grade]"
    end
  end
end
