class SarisController < ApplicationController
  #   saris GET    /saris(.:format)          saris#index
  # get view with all saris (saris#index controller action) which shows all saris by all users on one page, but only if logged in. if someone attempts to go to /saris page, then they will be redirected to the welcome index
  def index
    if logged_in?
      @saris = Sari.all
    else
      redirect_to root_path
    end
  end

#  new_sari GET    /saris/new(.:format)      saris#new
# get view to upload new sari
  def new
    @sari = current_user.saris.new
  end

# POST   /saris(.:format)          saris#create
# post or route to view that posts new sari gallery by current user
  def create
    @sari = current_user.saris.new(sari_params)
    if @sari.save
      redirect_to user_path(current_user), notice: "New Sari Added!"
    else
      render "new"
    end
  end

#  edit_sari GET    /saris/:id/edit(.:format) saris#edit
# get the item to be edited
  def edit
    @sari = Sari.find(params[:id])
  end

# PATCH  /saris/:id(.:format)      saris#update
# PUT    /saris/:id(.:format)      saris#update
# put/patch the current user's edit their sari gallery
  def update
    @sari = Sari.find(params[:id])
    if @sari.update_attributes(sari_params)
    redirect_to user_path(current_user), notice: "Sari Updated!"
    else
    render 'edit'
    end
  end


# delete the sari gallery the current user wants deleted
  def destroy
    sari = Sari.find(params[:id])
    if sari.destroy
      redirect_to current_user, notice: "Sari deleted!"
    else
      flash[:error] =
      "Error attempting to delete sari."
      redirect_to user_path(@user)
    end
  end

# DELETE /saris/:id(.:format)      saris#destroy
# these are the what's required when sari_params is called and the 3 attributes are the only ones permitted
  private
  def sari_params
    params.require(:sari).permit(:image, :story, :owner)
  end
end


