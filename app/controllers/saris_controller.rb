class SarisController < ApplicationController
  def new
    @sari = current_user.saris.new
  end

  def create
    @sari = current_user.saris.new(sari_params)
    if @sari.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def edit
    @sari = Sari.find(params[:id])
  end

  def update
    @sari = Sari.find(params[:id])
    if @sari.update_attributes(sari_params)
    redirect_to user_path(current_user)
    else
    render 'edit'
    end
  end

  # def destroy
  #   @user = User.find_by_id(current_user.id)
  #   sari = Sari.find(params[:id])
  #   if sari.destroy
  #     redirect_to current_user, notice: "Sari deleted!"
  #   else
  #     flash[:error] =
  #     "Error attempting to delete sari."
  #     redirect_to user_path(@user)
  #   end
  # end


  def index
    @saris = Sari.all
  end

  private
  def sari_params
    params.require(:sari).permit(:image, :story, :owner)
  end
end


