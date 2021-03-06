require 'rails_helper'

RSpec.describe "topics/index", :type => :view do
  before(:each) do
    assign(:topics, [
      Topic.create!(
        :discipline_id => 1,
        :name => "Name"
      ),
      Topic.create!(
        :discipline_id => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of topics" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
