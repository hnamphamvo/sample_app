# frozen_string_literal: true

# :nodoc:

class ApplicationController < ActionController::Base # :nodoc:
  protect_from_forgery with: :exception
  include SessionsHelper
end
