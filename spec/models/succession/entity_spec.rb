require 'spec_helper'

module Succession
  describe Entity do
    before(:each) do
      @entity = Succession::Entity.create!(rank: 0)
    end
    describe "up" do
      it "should start with rank 0" do
        @entity.rank.should == 0
      end

      it "should be 1 after the up call" do
        @entity.up
        @entity.rank.should == 1
      end
    end

    describe "down" do
      it "should start with rank 0" do
        @entity.rank.should == 0
      end

      it "should be -1 after the up call" do
        @entity.down
        @entity.rank.should == -1
      end
    end
  end
end
