require 'spec_helper'

describe "subscriptions/edit" do
  before(:each) do
    @subscription = assign(:subscription, stub_model(Subscription,
      :username => "MyString"
    ))
  end

  it "renders the edit subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do
      assert_select "input#subscription_username[name=?]", "subscription[username]"
    end
  end
end
