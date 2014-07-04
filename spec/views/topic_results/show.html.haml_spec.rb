require 'rails_helper'

RSpec.describe "topic_results/show", :type => :view do
  before(:each) do
    @topic_result = assign(:topic_result, TopicResult.create!(
      :topic => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
