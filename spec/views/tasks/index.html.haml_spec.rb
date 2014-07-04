require 'rails_helper'

RSpec.describe "tasks/index", :type => :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :lesson => nil,
        :level => 1,
        :xml => "MyText"
      ),
      Task.create!(
        :lesson => nil,
        :level => 1,
        :xml => "MyText"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
