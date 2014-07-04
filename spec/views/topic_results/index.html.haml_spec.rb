require 'rails_helper'

RSpec.describe "topic_results/index", :type => :view do
  before(:each) do
    assign(:topic_results, [
      TopicResult.create!(
        :topic => nil,
        :student => nil,
        :grade => 1
      ),
      TopicResult.create!(
        :topic => nil,
        :student => nil,
        :grade => 1
      )
    ])
  end

  it "renders a list of topic_results" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
