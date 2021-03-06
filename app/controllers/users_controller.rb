class UsersController < ApplicationController
  before_action :authenticate, except: [:new, :create]
  before_action :authorize



#  new_user GET    /users/new(.:format)      users#new
# get view to become a new user
  def new
    @user = User.new
  end

# POST   /users(.:format)          users#create
# post new user information and route to their users#show controller and view
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now.alert = "Invalid Credentials!"
      render 'new'
    end
  end

# user GET    /users/:id(.:format)      users#show
# get the current user's specific profile page and view
  def show
    @user = User.find_by_id(params[:id])
    @user_saris = @user.saris
  end

# edit_user GET    /users/:id/edit(.:format) users#edit
# get profile information to be edited
  def edit
    @user = User.find_by_id(params[:id])
  end

# PATCH  /users/:id(.:format)      users#update
# PUT    /users/:id(.:format)      users#update
# put/patch the profile information and take them to their profile page and view
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
    redirect_to user_path(current_user), notice: "Profile Updated!"
    else
    render 'edit'
    end
  end

# DELETE /users/:id(.:format)      users#destroy
# delete the profile of the current user
  def destroy
    user = User.find(params[:id])
    user.saris.destroy_all
    if user.destroy
      redirect_to root_path, notice: "Profile Deleted!"
    else
      flash[:error] =
      "Error deleting profile!"
      redirect_to user_path(current_user)
    end
  end

# these what's required when user_params is called and the 4 attributes are the only ones permitted
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def authorize
    @user = User.find_by_id(params[:id])
    unless current_user == @user
      flash[:error] =
        "You are not authorized to access that user's information."
      redirect_to user_path(current_user)
    end
  end
end
