require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    
    # This section tests the behavior of the full_title helper, submitting an input and comparing it to the output, hence use of "foo".
    
    it "should include the page title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(full_title("foo")).to match(/^Scribe2/)
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end