require 'rails_helper'

RSpec.describe "Words", type: :request do
  let!(:word) { create(:word) }
  describe "GET /words" do
    before { get words_path }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "render index page" do
      expect(response.body).to include(word.value)
    end
  end
end
