require 'spec_helper'

describe "subscriptions/index" do
  before(:each) do
    assign(:subscriptions, [
      stub_model(Subscription,
        :username => "Username"
      ),
      stub_model(Subscription,
        :username => "Username"
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
  end
end
