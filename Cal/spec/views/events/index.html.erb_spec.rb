require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :owner => "Owner",
        :name => "Name",
        :place => "Place",
        :descr => "Descr"
      ),
      stub_model(Event,
        :owner => "Owner",
        :name => "Name",
        :place => "Place",
        :descr => "Descr"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Descr".to_s, :count => 2
  end
end
