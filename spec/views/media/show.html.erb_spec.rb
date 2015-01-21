require 'rails_helper'

RSpec.describe "media/show", :type => :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :title => "Title",
      :description => "MyText",
      :type => "Type",
      :media_url => "Media Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Media Url/)
  end
end
