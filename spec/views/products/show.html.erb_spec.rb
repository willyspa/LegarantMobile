require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      sfid: "Sfid",
      name: "Name",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sfid/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
