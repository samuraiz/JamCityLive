require 'rails_helper'

RSpec.describe "media/edit", :type => :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :title => "MyString",
      :description => "MyText",
      :type => "",
      :media_url => "MyString"
    ))
  end

  it "renders the edit medium form" do
    render

    assert_select "form[action=?][method=?]", medium_path(@medium), "post" do

      assert_select "input#medium_title[name=?]", "medium[title]"

      assert_select "textarea#medium_description[name=?]", "medium[description]"

      assert_select "input#medium_type[name=?]", "medium[type]"

      assert_select "input#medium_media_url[name=?]", "medium[media_url]"
    end
  end
end
