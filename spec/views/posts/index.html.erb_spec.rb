require 'rails_helper'

RSpec.describe "posts/index", :type => :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :title => "MyText",
        :content => "MyText",
        :comment => nil,
        :pic_art => "Pic Art"
      ),
      Post.create!(
        :title => "MyText",
        :content => "MyText",
        :comment => nil,
        :pic_art => "Pic Art"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Pic Art".to_s, :count => 2
  end
end
