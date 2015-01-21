require 'rails_helper'

RSpec.describe "media/index", :type => :view do
  before(:each) do
    assign(:media, [
      Medium.create!(
        :title => "Title",
        :description => "MyText",
        :type => "Type",
        :media_url => "Media Url"
      ),
      Medium.create!(
        :title => "Title",
        :description => "MyText",
        :type => "Type",
        :media_url => "Media Url"
      )
    ])
  end

  it "renders a list of media" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Media Url".to_s, :count => 2
  end
end
