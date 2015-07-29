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
  end

  def index
    @saris = Sari.all
  end

  private
  def sari_params
    params.require(:sari).permit(:image, :story, :owner)
  end
end

