class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @syukies = Syukie.where("user_id = #{params[:id]}")
    # @response = syukeis::where(“user_id”,  “1”)->get();
    # @syukies = syukie.where(user_id = params[:id])
    @profile = user.profile
    @syuki_name = user.syuki_name
    @since = user.since
    @nickname = user.nickname
  end

  def grade
    @user = User.find(params[:id])
    @syukie = Syukie.where("user_id = #{params[:id]}")
    syukie_array = Syukie.where("user_id = #{params[:id]}")
    now = Time.current
    points = []
    syukie_array.each do |syukie|
      if syukie.created_at <= now && syukie.created_at >= now.ago(7.days)
        points << syukie.point
      end
    end
    dates = []
    syukie_array.each do |syukie|
      if syukie.created_at <= now && syukie.created_at >= now.ago(7.days)
        dates << syukie.date
      end
    end
    diarys = {}
    syukie_array.each do |syukie|
      if syukie.created_at <= now && syukie.created_at >= now.ago(7.days)
        diarys << syukie.dates.max.diary
      end
    end
    @ave = points.sum(0.0) / points.length
    @highdate = dates.max
    @lowdate = dates.min
  end
end
