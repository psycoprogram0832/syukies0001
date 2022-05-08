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
    user = User.find(params[:id])
    # @syukies = Syukie.where("user_id = #{params[:id]}")
    @syukie = Syukie.where("user_id = #{params[:id]}").first
    @profile = user.profile
    @syuki_name = user.syuki_name
    @since = user.since
    @nickname = user.nickname
    # @param_count = (param_count)
  end

  def param_count
    user = User.find(params[:id])
    @syukies = Syukie.where("user_id = #{params[:id]}")
    numbers = [] 
    @points = user.syukies.points
    numbers <= @points
    numbers.length
    sum_of_number = 0
    numbers.each do |number|
    sum_of_number = sum_of_number + number # 順番に足す
    end
    puts sum_of_number / numbers.length
  end
end
