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
end
