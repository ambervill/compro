require 'rails_helper'

RSpec.describe "students/show", :type => :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :group => "Group"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Group/)
  end
end
