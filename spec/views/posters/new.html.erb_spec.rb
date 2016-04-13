require 'rails_helper'

RSpec.describe "posters/new", type: :view do
  before(:each) do
    assign(:poster, Poster.new(
      :slogan => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new poster form" do
    render

    assert_select "form[action=?][method=?]", posters_path, "post" do

      assert_select "input#poster_slogan[name=?]", "poster[slogan]"

      assert_select "input#poster_name[name=?]", "poster[name]"
    end
  end
end
