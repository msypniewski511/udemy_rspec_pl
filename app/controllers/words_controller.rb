# frozen_string_literal: true

# WordsController Documentation
#
# The `WordsController` is responsible for managing actions related to `Word` resources in the application.
# It provides CRUD (Create, Read, Update, Delete) functionality for `Word` objects, which are typically
# used to manage vocabulary, word lists, or any entity referred to as a "Word" in your domain model.
#
class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to(words_path)
    else
      render :new
    end
  end
  
  private
  def word_params
    params.require(:word).permit(:value, :language)
  end
end
