require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      sfid: "MyString",
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[sfid]"

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[description]"
    end
  end
end
