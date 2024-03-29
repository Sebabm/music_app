require 'spec_helper'
describe "User pages" do
  subject { page }
  describe "signup page" do
    before { visit signup_path }
    it { should have_selector('h1',  text: 'Sign Up') }
    it { should have_selector('title', text: full_title('Sign Up')) }
  end

  describe "signup" do
    before { visit signup_path }
    let(:submit) { "Create my account" }
    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end
  end
end