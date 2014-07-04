require 'rails_helper'

RSpec.describe "task_results/show", :type => :view do
  before(:each) do
    @task_result = assign(:task_result, TaskResult.create!(
      :task => nil,
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
