require 'rails_helper'

RSpec.describe "discipline_results/edit", :type => :view do
  before(:each) do
    @discipline_result = assign(:discipline_result, DisciplineResult.create!(
      :discipline => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders the edit discipline_result form" do
    render

    assert_select "form[action=?][method=?]", discipline_result_path(@discipline_result), "post" do

      assert_select "input#discipline_result_discipline_id[name=?]", "discipline_result[discipline_id]"

      assert_select "input#discipline_result_student_id[name=?]", "discipline_result[student_id]"

      assert_select "input#discipline_result_grade[name=?]", "discipline_result[grade]"
    end
  end
end
