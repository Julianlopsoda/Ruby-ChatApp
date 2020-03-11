class MensajeBroadcastJob < ApplicationJob
  queue_as :default

  def perform(mensaje)
    # Do something later
    ActionCable.server.broadcast "chat", {
      mensaje: render_mensaje(mensaje)
    }
  end

  private
  def render_mensaje(mensaje)
    MensajesController.render(
      partial: 'mensaje',
      locals: {
        mensaje: mensaje
      }
    )
  end
end
