require 'rails_helper'

RSpec.describe "task_results/index", :type => :view do
  before(:each) do
    assign(:task_results, [
      TaskResult.create!(
        :task => nil,
        :student => nil,
        :grade => 1
      ),
      TaskResult.create!(
        :task => nil,
        :student => nil,
        :grade => 1
      )
    ])
  end

  it "renders a list of task_results" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
