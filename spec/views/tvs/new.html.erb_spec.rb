require 'rails_helper'

RSpec.describe "tvs/new", type: :view do
  before(:each) do
    assign(:tv, Tv.new(
      :title => "MyText",
      :video => "MyString"
    ))
  end

  it "renders new tv form" do
    render

    assert_select "form[action=?][method=?]", tvs_path, "post" do

      assert_select "textarea#tv_title[name=?]", "tv[title]"

      assert_select "input#tv_video[name=?]", "tv[video]"
    end
  end
end
