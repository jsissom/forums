require 'spec_helper'

describe ApplicationHelper do
  describe "full_title" do
    it "should return the default title if no parameter" do
      helper.full_title.should == 'Rails Forums'
    end

    it "should return the default title if empty parameter" do
      helper.full_title('').should == 'Rails Forums'
    end

    it "should add the parameter to the title" do
      helper.full_title('blah').should == 'Rails Forums | blah'
    end
  end
end
