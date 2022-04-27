class SyukiesController < ApplicationController
  def index
    @syukies = Syukie.all
  end

  def new
    @syukie = Syukie.new
  end

  def create
    @syukie =Syukie.new(syukie_params)
    if @syukie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @syukie = Syukie.find(params[:id])
  end

  def edit
    @syukie = Syukie.find(params[:id])
    unless @syukie.user_id == current_user.id
      redirect_to  root_path
    end
  end

  def update
    @syukie = Syukie.find(params[:id])
    if 
      @syukie.update(syukie_params)
      redirect_to syuky_path
    else
      render 'edit'
    end
  end

  def destroy
    @syukie = Syukie.find(params[:id])
    @syukie.destroy
    redirect_to root_path
  end

  private
  def syukie_params
  params.require(:syukie).permit(:date, :point, :diary, :image).merge(user_id: current_user.id)
  end

end