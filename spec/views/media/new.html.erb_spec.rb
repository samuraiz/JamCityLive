require 'rails_helper'

RSpec.describe "media/new", :type => :view do
  before(:each) do
    assign(:medium, Medium.new(
      :title => "MyString",
      :description => "MyText",
      :type => "",
      :media_url => "MyString"
    ))
  end

  it "renders new medium form" do
    render

    assert_select "form[action=?][method=?]", media_path, "post" do

      assert_select "input#medium_title[name=?]", "medium[title]"

      assert_select "textarea#medium_description[name=?]", "medium[description]"

      assert_select "input#medium_type[name=?]", "medium[type]"

      assert_select "input#medium_media_url[name=?]", "medium[media_url]"
    end
  end
end
