# frozen_string_literal: true

# ApplicationMailer Documentation
#
# The `ApplicationMailer` is the base class for all mailers in the Rails application.
# It inherits from `ActionMailer::Base` and provides a common setup for all outgoing emails.
#
class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"
end
