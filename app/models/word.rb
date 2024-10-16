# frozen_string_literal: true

# Word Model Documentation
#
# The `Word` model represents a word entity in the system, typically used to store words
# along with their associated attributes, such as their name and definition.
#
class Word < ApplicationRecord
  validates :value, :language, presence: true
end
