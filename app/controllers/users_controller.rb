class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @syukies = Syukie.where("user_id = #{params[:id]}")
  end

  def edit

  end

  def update
  end

  def destroy
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
    
    @ave = points.sum(0.0) / points.length
    @highdate = dates.max
    @lowdate = dates.min
  end
end
