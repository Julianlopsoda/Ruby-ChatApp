class MensajesController < ApplicationController
  before_action :authenticate_account!

  def create
    @mensaje = Mensaje.new(mensaje_params)
    @mensaje.account = current_account
    @mensaje.save
  end

  private
  def mensaje_params
    params.require(:mensaje).permit(:cuerpo)
  end

end
