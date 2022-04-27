class UsersController < ApplicationController
  def show
    @profile = current_user.profile
    @syuki_name = current_user.syuki_name
    @since = current_user.since
    @nickname = current_user.nickname
  end
end
