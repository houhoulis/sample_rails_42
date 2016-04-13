require 'rails_helper'

RSpec.describe "posters/edit", type: :view do
  before(:each) do
    @poster = assign(:poster, Poster.create!(
      :slogan => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit poster form" do
    render

    assert_select "form[action=?][method=?]", poster_path(@poster), "post" do

      assert_select "input#poster_slogan[name=?]", "poster[slogan]"

      assert_select "input#poster_name[name=?]", "poster[name]"
    end
  end
end
