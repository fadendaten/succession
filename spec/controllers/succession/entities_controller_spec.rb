require 'spec_helper'

module Succession

  describe EntitiesController do

    subject {Post.create}

    before(:each) do
      request.env["HTTP_REFERER"] = "source_page"
    end

    it "GET up" do
      id = subject.succession_entity.id
      get :up, id: id, use_route: "succession"
      subject.rank.should == 1
    end

    it "GET down" do
      id = subject.succession_entity.id
      get :down, id: id, use_route: "succession"
      subject.rank.should == -1
    end
  end
end
