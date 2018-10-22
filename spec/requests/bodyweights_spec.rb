require 'rails_helper'

RSpec.describe "Bodyweights", type: :request do
  describe "GET /bodyweights" do
    it "works! (now write some real specs)" do
      get bodyweights_path
      expect(response).to have_http_status(200)
    end
  end
end
