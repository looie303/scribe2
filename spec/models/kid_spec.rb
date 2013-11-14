require 'spec_helper'

describe Kid do

  let(:user1) { FactoryGirl.create(:user) }
  let(:user2) { FactoryGirl.create(:user) }
  let(:kid1)  { FactoryGirl.create(:kid) }
  let(:kid2)  { FactoryGirl.create(:kid) }
  
  subject { kid1 }
  
  it { should respond_to(:fname) }
  it { should respond_to(:lname) }
  it { should respond_to(:dateofbirth) }
  it { should respond_to(:users) }  

  describe "relationships to Users aka Parents" do   
    before { user1.kids << kid1 }
    
    it "should recognize when a User or Parent has no kids" do
      user2.kids.count.should == 0
    end
    
    it "should handle a User or Parent with a kid" do
      user1.kids.count.should == 1
    end
    
    it "should know a kid's Parent or User" do
      kid1.users.count.should == 1
    end
    
    it "should return a different count for User1 with a kid and User2 with none" do
      user1.kids.count.should_not == user2.kids.count
    end
    
    it "should handle a kid with 2 Parents or Users" do
      user2.kids << kid1
      kid1.users.count.should == 2
    end
    
    it "should return a different count for kid1 and kid2" do
      user1.kids << kid2
      user2.kids << kid1
      kid1.users.count.should_not == kid2.users.count
    end
  end
end
