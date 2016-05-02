require 'rails_helper'

RSpec.describe "PublisherHouses", type: :request do
  describe "GET /publisher_houses" do
    it "works! (now write some real specs)" do
      get publisher_houses_path
      expect(response).to have_http_status(200)
    end
  end
end
