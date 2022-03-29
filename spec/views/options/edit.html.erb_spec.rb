require 'rails_helper'

RSpec.describe "options/edit", type: :view do
  before(:each) do
    @option = assign(:option, Option.create!(
      sfid: "MyString",
      contract__c: "MyString",
      name: "MyString"
    ))
  end

  it "renders the edit option form" do
    render

    assert_select "form[action=?][method=?]", option_path(@option), "post" do

      assert_select "input[name=?]", "option[sfid]"

      assert_select "input[name=?]", "option[contract__c]"

      assert_select "input[name=?]", "option[name]"
    end
  end
end
