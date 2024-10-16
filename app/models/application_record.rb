# frozen_string_literal: true

# ApplicationRecord Documentation
#
# The `ApplicationRecord` class serves as the base class for all models in a Ruby on Rails application.
# It inherits from `ActiveRecord::Base`, which provides the functionality for database interaction
# and object-relational mapping (ORM). By convention, all custom models in the application inherit from
# `ApplicationRecord`, allowing them to inherit shared behavior or configurations defined here.
#
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
