require 'spec_helper'

describe "StaticPages" do
  
  subject { page } # This tells us what "it" means below.
    
  describe "Home page" do
    before { visit root_path }
    
    # "It" here refers to the "subject { page }" item above.
    it { should have_content('Scribe2') } 
    it { should have_title(full_title('')) }
  end

  
  describe "Help page" do
    before { visit help_path }
    
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end
  
  describe "About page" do
    before { visit about_path }
    
    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
  
  describe "Contact page" do
    before { visit contact_path }
    
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end