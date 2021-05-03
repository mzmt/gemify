class PlansController < ApplicationController
  skip_before_action :require_login, raise: false, only: [:show]

  def show
    @user = User.find_by(twitter_id: params[:id])
    return redirect_to '/' unless @user

    @week = Date.today...Date.today.since(7.days)
    @plan = Plan.new
    @plans = @user.plans.where(start_date: Date.today.beginning_of_day...Date.today.since(7.days).end_of_day).order(:start_date)
    # .where(start_date: Time.current...Time.current.since(7.days))
  end

  def create
    @plan = current_user.plans.new(
      name: plan_params[:name],
      start_date: Time.parse(plan_params[:date] + ' ' + plan_params[:start_time]),
      end_date: Time.parse(plan_params[:date] + ' ' + plan_params[:end_time])
    )
    if @plan.save
      flash[:game_name] = @plan.name
      flash[:datetime] = @plan.start_date.strftime('%H:%M') + ' - ' + @plan.end_date.strftime('%H:%M')
      redirect_to "/#{current_user.twitter_id}", notice: '予定を作成しました🎉　ツイートする'
    else
      @week = Date.today...Date.today.since(7.days)
      @plans = current_user.plans.where(start_date: Time.current...Time.current.since(7.days)).order(:start_date)
      @user = current_user
      @active_modal_id = 'modal-' + @plan.start_date.strftime('%Y-%m-%d')
      render :show
    end
  end

  def destroy
    current_user.plans.find(params[:id]).destroy!
    redirect_to '/' + current_user.twitter_id, notice: '予定を削除しました✏️'
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :date, :start_time, :end_time)
  end
end
