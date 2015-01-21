require 'rails_helper'

RSpec.describe "contestants/edit", :type => :view do
  before(:each) do
    @contestant = assign(:contestant, Contestant.create!(
      :name => "MyString",
      :bio => "MyText",
      :nickname => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit contestant form" do
    render

    assert_select "form[action=?][method=?]", contestant_path(@contestant), "post" do

      assert_select "input#contestant_name[name=?]", "contestant[name]"

      assert_select "textarea#contestant_bio[name=?]", "contestant[bio]"

      assert_select "input#contestant_nickname[name=?]", "contestant[nickname]"

      assert_select "input#contestant_image[name=?]", "contestant[image]"
    end
  end
end
