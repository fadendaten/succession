require 'spec_helper'

module Succession
  describe Entity do
    
    before(:each) do
      @lower_rank = 0
      @upper_rank = 1
      @e0 = Succession::Entity.create!(:rank => @lower_rank)
      @e1 = Succession::Entity.create!(:rank => @upper_rank)
    end
    
    it "should have assigned correct initial ranks" do
      @e0.rank.should == @lower_rank && @e1.rank.should == @upper_rank 
    end
     
    describe "up" do
      it "should be 1 after the up call" do
        @e0.up
        @e0.rank.should == @upper_rank
      end
      
      it "should keep its rank value if entity had highest rank after the up call" do
        @e1.up
        @e1.rank.should == @upper_rank
      end
    end

    describe "down" do
      it "should have a rank value lowered by one for any entity not equal the lowest one (rank) after a down call" do
        @e1.down
        @e1.rank.should == @lower_rank
      end
      
      it "should keep its rank value if entity had highest rank after the up call" do
        @e0.down
        @e0.rank.should == @lower_rank
      end
    end
   
  end
end
