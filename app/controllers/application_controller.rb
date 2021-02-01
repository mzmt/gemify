class ApplicationController < ActionController::Base
  before_action :require_login

  # def current_user
  #   User.first
  # end
end
