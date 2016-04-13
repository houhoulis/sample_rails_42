require 'rails_helper'

RSpec.describe "posters/show", type: :view do
  before(:each) do
    @poster = assign(:poster, Poster.create!(
      :slogan => "Slogan",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Slogan/)
    expect(rendered).to match(/Name/)
  end
end
