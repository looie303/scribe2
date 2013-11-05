require 'spec_helper'

describe Kid do
  
  let(:user) { FactoryGirl.create(:user) }
  before { @kid = user.kids.build(fname: "Henry")}
  
  subject { @kid }
  
  it { should respond_to(:fname) }
  it { should respond_to(:lname) }
  it { should respond_to(:user_id) }
  
end
