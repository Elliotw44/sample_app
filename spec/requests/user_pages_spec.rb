require 'spec_helper'

describe "UserPages" do
  # see static_pages_spec for comments  
  subject { page }
  
  describe "signup page" do
      before { visit signup_path }

      it { should have_selector('h1', test: 'Sign up')}
      it {should have_selector('title', text: full_title('Sign up'))}
  end
end
