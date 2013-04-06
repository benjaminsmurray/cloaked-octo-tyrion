require 'spec_helper'

describe "myeventshandlers/edit" do
  before(:each) do
    @myeventshandler = assign(:myeventshandler, stub_model(Myeventshandler))
  end

  it "renders the edit myeventshandler form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", myeventshandler_path(@myeventshandler), "post" do
    end
  end
end
