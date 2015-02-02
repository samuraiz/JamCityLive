require 'rails_helper'

RSpec.describe "contestants/show", :type => :view do
  before(:each) do
    @contestant = assign(:contestant, Contestant.create!(
      :name => "Name",
      :bio => "MyText",
      :nickname => "Nickname",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/Image/)
  end
end
