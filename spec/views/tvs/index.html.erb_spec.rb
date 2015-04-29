require 'rails_helper'

RSpec.describe "tvs/index", type: :view do
  before(:each) do
    assign(:tvs, [
      Tv.create!(
        :title => "MyText",
        :video => "Video"
      ),
      Tv.create!(
        :title => "MyText",
        :video => "Video"
      )
    ])
  end

  it "renders a list of tvs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
