require 'rails_helper'

RSpec.describe "tvs/show", type: :view do
  before(:each) do
    @tv = assign(:tv, Tv.create!(
      :title => "MyText",
      :video => "Video"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Video/)
  end
end
