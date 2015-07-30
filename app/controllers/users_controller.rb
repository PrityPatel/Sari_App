class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to saris_path(@user)
    else
      flash.now.alert = "Invalid Credentials!"
      render 'new'
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    @user_saris = @user.saris
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
    redirect_to user_path(current_user), notice: "Profile Updated!"
    else
    render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      redirect_to root_path
    else
      flash[:error] =
      "Error attempting to delete user."
      redirect_to user_path(@user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
