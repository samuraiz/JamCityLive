require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyText",
      :content => "MyText",
      :comment => nil,
      :pic_art => "MyString"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "textarea#post_title[name=?]", "post[title]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_comment_id[name=?]", "post[comment_id]"

      assert_select "input#post_pic_art[name=?]", "post[pic_art]"
    end
  end
end
