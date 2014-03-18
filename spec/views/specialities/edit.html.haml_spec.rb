require 'spec_helper'

describe "specialities/edit" do
  before(:each) do
    @speciality = assign(:speciality, stub_model(Speciality,
      :name => "MyString",
      :code => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit speciality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", speciality_path(@speciality), "post" do
      assert_select "input#speciality_name[name=?]", "speciality[name]"
      assert_select "input#speciality_code[name=?]", "speciality[code]"
      assert_select "input#speciality_description[name=?]", "speciality[description]"
    end
  end
end
