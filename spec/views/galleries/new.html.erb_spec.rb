require 'rails_helper'

RSpec.describe "galleries/new", type: :view do
  before(:each) do
    assign(:gallery, Gallery.new(
      :title => "MyText",
      :image => "MyString"
    ))
  end

  it "renders new gallery form" do
    render

    assert_select "form[action=?][method=?]", galleries_path, "post" do

      assert_select "textarea#gallery_title[name=?]", "gallery[title]"

      assert_select "input#gallery_image[name=?]", "gallery[image]"
    end
  end
end
