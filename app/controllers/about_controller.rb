class AboutController < ApplicationController
  skip_before_action :require_login, raise: false

  def index; end

  def terms; end

  def policy; end
end
