require 'rails_helper'

RSpec.describe "options/show", type: :view do
  before(:each) do
    @option = assign(:option, Option.create!(
      sfid: "Sfid",
      contract__c: "Contract  C",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sfid/)
    expect(rendered).to match(/Contract  C/)
    expect(rendered).to match(/Name/)
  end
end
