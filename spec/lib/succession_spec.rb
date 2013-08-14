require "spec_helper"

describe Succession do
  subject {Post.create}

  describe "succession_entity" do
    it { should respond_to :succession_entity}
    it "should return a Succession::Entity" do
      subject.succession_entity.class.should == Succession::Entity
    end
  end

  describe "rank" do
    it { should respond_to :rank }
    it "should return the rank of the entity" do
      subject.succession_entity.rank.should == subject.rank
    end
  end

  describe "rank=" do
    it { should respond_to :rank= }
    it "should set the rank of the entity" do
      subject.rank= 123
      subject.succession_entity.rank.should == 123
    end
  end
end
