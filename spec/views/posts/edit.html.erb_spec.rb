require 'rails_helper'

RSpec.describe "posts/edit", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyText",
      :content => "MyText",
      :comment => nil,
      :pic_art => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "textarea#post_title[name=?]", "post[title]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_comment_id[name=?]", "post[comment_id]"

      assert_select "input#post_pic_art[name=?]", "post[pic_art]"
    end
  end
end
