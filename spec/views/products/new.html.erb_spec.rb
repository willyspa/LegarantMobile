require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      sfid: "MyString",
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[sfid]"

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[description]"
    end
  end
end
