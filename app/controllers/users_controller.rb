class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  before_action :set_user, only: [:edit, :update, :show, :destroy]

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to user_path(@user.id)
      else
        render :new
      end
  end
  
  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "編集しました" 
      else
        render :edit
      end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :picture, :picture_cache)
  end

  def set_user
    @user = User.find(params[:id])
    redirect_to users_path, notice: "変更不可です" unless @user.name == current_user.name
  end

end