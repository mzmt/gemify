class OauthsController < ApplicationController
  skip_before_action :require_login, raise: false
  include SlackNotify

  def oauth
    login_at(auth_params[:provider])
  end

  def callback
    return redirect_to root_path if params[:denied]

    provider = params[:provider]
    if @user = login_from(provider)
      redirect_to "/#{current_user.twitter_id}", notice: 'ログインしました✅'
    else
      begin
        @user = create_from(provider)

        reset_session # protect from session fixation attack
        auto_login(@user)
        text = "new register!! twitter_id: #{@user.twitter_id}"
        slack_notify(text, ENV.fetch('SLACK_WEBHOOK_URL'))
        redirect_to "/#{current_user.twitter_id}", notice: '新規登録しました✨'
      rescue StandardError
        redirect_to root_path, alert: '登録に失敗しました'
      end
    end
  end

  private

  def auth_params
    params.permit(:code, :provider)
  end
end
