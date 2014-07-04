require 'rails_helper'

RSpec.describe "discipline_results/new", :type => :view do
  before(:each) do
    assign(:discipline_result, DisciplineResult.new(
      :discipline => nil,
      :student => nil,
      :grade => 1
    ))
  end

  it "renders new discipline_result form" do
    render

    assert_select "form[action=?][method=?]", discipline_results_path, "post" do

      assert_select "input#discipline_result_discipline_id[name=?]", "discipline_result[discipline_id]"

      assert_select "input#discipline_result_student_id[name=?]", "discipline_result[student_id]"

      assert_select "input#discipline_result_grade[name=?]", "discipline_result[grade]"
    end
  end
end
