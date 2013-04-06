require 'spec_helper'

describe "myeventshandlers/new" do
  before(:each) do
    assign(:myeventshandler, stub_model(Myeventshandler).as_new_record)
  end

  it "renders new myeventshandler form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", myeventshandlers_path, "post" do
    end
  end
end
