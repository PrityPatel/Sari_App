class SarisController < ApplicationController
  def new
    @sari = Sari.new
  end

  def create
    @sari = Sari.new
    if @sari.save
    redirect_to user_path(current_user)
  end



end

  # private
  # def sari_params
  #   params.require(current_user).permit(:image, :story, :owner)
  # end

end
