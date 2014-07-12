require 'rails_helper'

RSpec.describe "topics/edit", :type => :view do
  before(:each) do
    @topic = assign(:topic, Topic.create!(
      :discipline_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit topic form" do
    render

    assert_select "form[action=?][method=?]", topic_path(@topic), "post" do

      assert_select "input#topic_discipline_id[name=?]", "topic[discipline_id]"

      assert_select "input#topic_name[name=?]", "topic[name]"
    end
  end
end
