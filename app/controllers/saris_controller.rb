class SarisController < ApplicationController
  def new
    @sari = Sari.new
  end

  def create
    @sari = Sari.new(sari_params)
    if @sari.save
      redirect_to user_path(current_user)
    end
  end

  def edit
  end

  def show
  end

end

  private
  def sari_params
    params.require(:sari).permit(:image, :story, :owner)
  end


