require 'rails_helper'

RSpec.describe "discipline_results/index", :type => :view do
  before(:each) do
    assign(:discipline_results, [
      DisciplineResult.create!(
        :discipline => nil,
        :student => nil,
        :grade => 1
      ),
      DisciplineResult.create!(
        :discipline => nil,
        :student => nil,
        :grade => 1
      )
    ])
  end

  it "renders a list of discipline_results" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
