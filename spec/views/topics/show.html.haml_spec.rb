require 'rails_helper'

RSpec.describe "topics/show", :type => :view do
  before(:each) do
    @topic = assign(:topic, Topic.create!(
      :discipline_id => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
  end
end
