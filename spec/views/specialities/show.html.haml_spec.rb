require 'spec_helper'

describe "specialities/show" do
  before(:each) do
    @speciality = assign(:speciality, stub_model(Speciality,
      :name => "Name",
      :code => "Code",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Code/)
    rendered.should match(/Description/)
  end
end
