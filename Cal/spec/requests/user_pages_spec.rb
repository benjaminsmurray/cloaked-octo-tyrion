require 'spec_helper'

describe "UserPages" do
  describe "register page" do
    it "fadsf" do
      visit '/register'
      page.should have_selector('title', text: "Register")
    end   
  end
end
