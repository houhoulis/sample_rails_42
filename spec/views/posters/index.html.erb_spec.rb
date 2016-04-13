require 'rails_helper'

RSpec.describe "posters/index", type: :view do
  before(:each) do
    assign(:posters, [
      Poster.create!(
        :slogan => "Slogan",
        :name => "Name"
      ),
      Poster.create!(
        :slogan => "Slogan",
        :name => "Name"
      )
    ])
  end

  it "renders a list of posters" do
    render
    assert_select "tr>td", :text => "Slogan".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
