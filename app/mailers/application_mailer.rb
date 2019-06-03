# frozen_string_literal: true

# :nodoc:
class ApplicationMailer < ActionMailer::Base
  default from: Settings.default_from_email
  layout 'mailer'
end
