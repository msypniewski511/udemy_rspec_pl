require 'rails_helper'

RSpec.describe "Words", type: :request do
  let(:word) { Word.create!(value: 'cat', language: 'english') }
  describe "GET /words" do
    it "returns http success" do
      get words_path
      expect(response).to have_http_status(:success)
    end
    it "render index page" do
      get "/words"
      expect(response.body).to include(word.value)
    end
  end
end
