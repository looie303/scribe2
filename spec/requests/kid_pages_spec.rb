require 'spec_helper'

describe "KidPages" do
  
  subject { page }
  
  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }
  
  describe "kid creation" do
    before { visit addkid_path }
    
    describe "with invalid information" do
      
      it "should not create a kid" do
        expect { click_button "Submit" }.not_to change(Kid, :count)
      end
      
      describe "error messages" do
        before { click_button "Submit" }
        it { should have_content('error') }
      end
    end
    
    describe "with valid information" do
      
      before do 
        fill_in 'kid_fname', with: "Henry"
        fill_in 'kid_lname', with: "Houseworth"
        fill_in 'dateofbirth', with: "2008-12-31"
      end
      it "should create a kid" do
        expect { click_button "Submit" }.to change(Kid, :count).by(1)
      end
    end
  end
end
