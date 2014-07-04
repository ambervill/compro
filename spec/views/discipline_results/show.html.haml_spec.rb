require 'rails_helper'

RSpec.describe "discipline_results/show", :type => :view do
  before(:each) do
    @discipline_result = assign(:discipline_result, DisciplineResult.create!(
      :discipline => nil,
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
