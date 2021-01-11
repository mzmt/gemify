class PlansController < ApplicationController
  def index
    @week = Date.today...Date.today.since(7.days)
    @user = User.first
    @plans = @user.plans.where(start_date: Time.current...Time.current.since(7.days)).order(:start_date)
    # .where(start_date: date.beginning_of_day...date.end_of_day)
  end
end
