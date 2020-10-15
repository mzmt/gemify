class PlansController < ApplicationController
  def index
    @week = Date.today...Date.today.since(7.days)
    @plans = Plan.where(start_date: Time.current...Time.current.since(7.days)).order(:start_date)
  end
end
