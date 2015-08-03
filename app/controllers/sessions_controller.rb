class SessionsController < ApplicationController

  # new_session GET    /sessions/new(.:format)   sessions#new
  def new
 end

# sessions POST   /sessions(.:format)       sessions#create
# log-in credentials - create new session
 def create
   user = User.find_by(email: params[:email]) && User.find_by(name: params[:name])
   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to user_path(user.id)
   else
     flash.now.alert = 'Invalid login credentials'
     render 'new'
   end
 end

# session DELETE /sessions/:id(.:format)   sessions#destroy
# log out -session ended
 def destroy
   session[:user_id] = nil
   redirect_to root_path, notice: "Logged out!"
 end

end
