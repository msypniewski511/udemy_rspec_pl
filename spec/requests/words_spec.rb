# frozen_string_literal: true

require "rails_helper"

RSpec.describe "WordsController", type: :request do
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

  describe "GET /new" do
    it "renders the new word form" do
      get new_word_path
      expect(response).to have_http_status(:success)
      expect(response.body).to include("New Word")
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      let(:valid_attributes) { { word: { value: "New word", language: "english" }} }

      it "creates a new word" do
        expect {
          post words_path, params: valid_attributes
      }.to change(Word, :count).by(1)

      expect(response).to redirect_to(words_path)
      follow_redirect!
      expect(response.body).to include("New word")
      end
    end

    context "with invalid parameters" do
      let(:invalid_attributes) { { word: { value: "", language: "" } } }

      it "does not create a new word and renders new template" do
        expect {
          post words_path, params: invalid_attributes
      }.to change(Word, :count).by(0)

      expect(response).to have_http_status(:unprocessable_entity)
      expect(response.body).to include("New Word")
      end
    end
  end

  describe "GET /show" do
    let(:word) { create(:word) }

    it "shows the word details" do
      get word_path(word)
      expect(response).to have_http_status(:ok)
      expect(response.body).to include(word.value)
      expect(response.body).to include(word.language)
    end
  end
end
