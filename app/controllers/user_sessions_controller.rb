class UserSessionsController < ApplicationController
  def destroy
    logout
    redirect_to '/', notice: 'ログアウトしました'
  end
end
