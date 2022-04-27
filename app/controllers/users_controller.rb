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
end
