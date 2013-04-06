require 'spec_helper'
describe "authentication" do
  subject {page}
  describe "login page" do
    before {visit login_path}
    it{should have_selector('h1', text:'Enter Login')}
    describe "signin" do
      describe "with invalid info" do
        before {click_button "Login" }
        it {should have_selector('title', text: 'Login')}
        it {should have_selector('notice',text:'Failed')}
      end
    end
  end
  describe "profile page"
  let(:user){FactoryGirl.create(:user)}
  before { visit user_path(user)}
  it{should have_selector('h1', text: user.username)}
  it{should have_selector('title', text: user.username)}
end


