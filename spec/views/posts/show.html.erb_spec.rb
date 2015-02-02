require 'rails_helper'

RSpec.describe "posts/show", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyText",
      :content => "MyText",
      :comment => nil,
      :pic_art => "Pic Art"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Pic Art/)
  end
end
