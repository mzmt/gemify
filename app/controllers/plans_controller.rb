class PlansController < ApplicationController
  skip_before_action :require_login, raise: false

  def show
    @user = User.find_by(twitter_id: params[:id])
    return redirect_to '/' unless @user

    @week = Date.today...Date.today.since(7.days)
    @plans = @user.plans.where(start_date: Time.current...Time.current.since(7.days)).order(:start_date)
    # .where(start_date: date.beginning_of_day...date.end_of_day)
  end
end
