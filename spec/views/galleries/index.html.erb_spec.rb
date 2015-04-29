require 'rails_helper'

RSpec.describe "galleries/index", type: :view do
  before(:each) do
    assign(:galleries, [
      Gallery.create!(
        :title => "MyText",
        :image => "Image"
      ),
      Gallery.create!(
        :title => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of galleries" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
