require 'rails_helper'

RSpec.describe "contestants/new", :type => :view do
  before(:each) do
    assign(:contestant, Contestant.new(
      :name => "MyString",
      :bio => "MyText",
      :nickname => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new contestant form" do
    render

    assert_select "form[action=?][method=?]", contestants_path, "post" do

      assert_select "input#contestant_name[name=?]", "contestant[name]"

      assert_select "textarea#contestant_bio[name=?]", "contestant[bio]"

      assert_select "input#contestant_nickname[name=?]", "contestant[nickname]"

      assert_select "input#contestant_image[name=?]", "contestant[image]"
    end
  end
end
