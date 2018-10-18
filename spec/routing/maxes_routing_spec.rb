require "rails_helper"

RSpec.describe MaxesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/maxes").to route_to("maxes#index")
    end


    it "routes to #show" do
      expect(:get => "/maxes/1").to route_to("maxes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/maxes").to route_to("maxes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/maxes/1").to route_to("maxes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/maxes/1").to route_to("maxes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/maxes/1").to route_to("maxes#destroy", :id => "1")
    end

  end
end
