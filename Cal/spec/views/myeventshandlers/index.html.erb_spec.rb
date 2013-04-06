require 'spec_helper'

describe "myeventshandlers/index" do
  before(:each) do
    assign(:myeventshandlers, [
      stub_model(Myeventshandler),
      stub_model(Myeventshandler)
    ])
  end

  it "renders a list of myeventshandlers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
