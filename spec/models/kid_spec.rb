require 'spec_helper'

describe Kid do
  
  let(:user) { FactoryGirl.create(:user) }
  before { @kid = user.kids.build(fname: "Henry")}
  
  subject { @kid }
  
  it { should respond_to(:fname) }
  it { should respond_to(:lname) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }  
  
  it { should be_valid }
  
  describe "when user_id is not present" do
    before { @kid.user_id = nil }
    it { should_not be_valid }
  end
end
