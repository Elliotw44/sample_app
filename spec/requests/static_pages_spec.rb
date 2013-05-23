
require 'spec_helper'

describe "Static Pages" do

  #sets the subject for the tests below instead of having to do it{ page.should have_selector ....
  subject { page }
 
  describe "Home page" do

    # before each test you vist this path. path information found in /config/routes.rb  
    before { visit root_path }  

    it { should have_selector('h1', text: 'Sample App') }

    #using function full_title from /spec/support/utilities.rb
    it { should have_selector('title', text:  full_title(''))} 

    #new style for defining hashes key: value 
    it { should_not have_selector('title', text: '| Home')}
  end

 describe "Help page" do

   before { visit help_path }  

  it { should have_selector('h1', :text => 'Help') }
  
  #old style for defining hashes :key => value
  it { should have_selector('title', :text => full_title('Help'))}
 end

 describe "About page" do

   before { visit about_path }

  it { should have_selector('h1', text: 'About Us')}

  it { should have_selector('title', text: full_title('About'))}
 end

 describe "Contact page" do

   before { visit contact_path }

  it { should have_selector('h1', text: 'Contact')}

  it { should have_selector('title', text: full_title('Contact'))}
 end
end
