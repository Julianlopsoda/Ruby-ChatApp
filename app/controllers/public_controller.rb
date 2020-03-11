class PublicController < ApplicationController



    def index
        @mensajes = Mensaje.all
        @mensaje = Mensaje.new
    end

end
