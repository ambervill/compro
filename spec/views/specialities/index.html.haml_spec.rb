require 'spec_helper'

describe "specialities/index" do
  before(:each) do
    assign(:specialities, [
      stub_model(Speciality,
        :name => "Name",
        :code => "Code",
        :description => "Description"
      ),
      stub_model(Speciality,
        :name => "Name",
        :code => "Code",
        :description => "Description"
      )
    ])
  end

  it "renders a list of specialities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
