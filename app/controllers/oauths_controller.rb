class OauthsController < ApplicationController
  skip_before_action :require_login, raise: false

  def oauth
    login_at(auth_params[:provider])
  end

  def callback
    provider = params[:provider]
    if @user = login_from(provider)
      # twitterのscreen_nameが更新されている場合、ここで更新処理を行う
      redirect_to "/#{current_user.twitter_id}", notice: 'ログインしました✅'
    else
      begin
        @user = create_from(provider)

        reset_session # protect from session fixation attack
        auto_login(@user)
        redirect_to "/#{current_user.twitter_id}", notice: '新規登録しました✨'
      rescue
        redirect_to root_path, alert: '登録に失敗しました'
      end
    end
  end

  private

  def auth_params
    params.permit(:code, :provider)
  end
end
