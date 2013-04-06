require 'spec_helper'

describe "myeventshandlers/show" do
  before(:each) do
    @myeventshandler = assign(:myeventshandler, stub_model(Myeventshandler))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
