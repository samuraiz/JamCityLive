require 'rails_helper'

RSpec.describe "contestants/index", :type => :view do
  before(:each) do
    assign(:contestants, [
      Contestant.create!(
        :name => "Name",
        :bio => "MyText",
        :nickname => "Nickname",
        :image => "Image"
      ),
      Contestant.create!(
        :name => "Name",
        :bio => "MyText",
        :nickname => "Nickname",
        :image => "Image"
      )
    ])
  end

  it "renders a list of contestants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
