require 'spec_helper'
describe "User Pages" do
  describe "register page" do
    it 'visit register page, should have title register' do
      visit register_path
      page.should have_content("Register")
    end   
  end
end
