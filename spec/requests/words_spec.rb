require 'rails_helper'

RSpec.describe "Words", type: :request do
  describe "GET /words" do
    it "returns http success" do
      get "/words"
      expect(response).to have_http_status(:success)
    end
    it "render index page" do
      get "/words"
      expect(response.body).to include("h1")
    end
  end
end
