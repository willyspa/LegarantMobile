require 'rails_helper'

RSpec.describe "options/index", type: :view do
  before(:each) do
    assign(:options, [
      Option.create!(
        sfid: "Sfid",
        contract__c: "Contract  C",
        name: "Name"
      ),
      Option.create!(
        sfid: "Sfid",
        contract__c: "Contract  C",
        name: "Name"
      )
    ])
  end

  it "renders a list of options" do
    render
    assert_select "tr>td", text: "Sfid".to_s, count: 2
    assert_select "tr>td", text: "Contract  C".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
