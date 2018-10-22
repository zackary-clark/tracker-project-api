require "rails_helper"

RSpec.describe BodyweightsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bodyweights").to route_to("bodyweights#index")
    end


    it "routes to #show" do
      expect(:get => "/bodyweights/1").to route_to("bodyweights#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bodyweights").to route_to("bodyweights#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bodyweights/1").to route_to("bodyweights#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bodyweights/1").to route_to("bodyweights#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bodyweights/1").to route_to("bodyweights#destroy", :id => "1")
    end

  end
end
