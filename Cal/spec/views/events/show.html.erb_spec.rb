require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :owner => "Owner",
      :name => "Name",
      :place => "Place",
      :descr => "Descr"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Owner/)
    rendered.should match(/Name/)
    rendered.should match(/Place/)
    rendered.should match(/Descr/)
  end
end
