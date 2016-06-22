require "rails_helper"

RSpec.describe Module::PerformerManage::TenderCommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/module/performer_manages").to route_to("module/performer_manages#index")
    end

    it "routes to #new" do
      expect(:get => "/module/performer_manages/new").to route_to("module/performer_manages#new")
    end

    it "routes to #show" do
      expect(:get => "/module/performer_manages/1").to route_to("module/performer_manages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/module/performer_manages/1/edit").to route_to("module/performer_manages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/module/performer_manages").to route_to("module/performer_manages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/module/performer_manages/1").to route_to("module/performer_manages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/module/performer_manages/1").to route_to("module/performer_manages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/module/performer_manages/1").to route_to("module/performer_manages#destroy", :id => "1")
    end

  end
end
