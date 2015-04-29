require 'rails_helper'

RSpec.describe "tvs/edit", type: :view do
  before(:each) do
    @tv = assign(:tv, Tv.create!(
      :title => "MyText",
      :video => "MyString"
    ))
  end

  it "renders the edit tv form" do
    render

    assert_select "form[action=?][method=?]", tv_path(@tv), "post" do

      assert_select "textarea#tv_title[name=?]", "tv[title]"

      assert_select "input#tv_video[name=?]", "tv[video]"
    end
  end
end
