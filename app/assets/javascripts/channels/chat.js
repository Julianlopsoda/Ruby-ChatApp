App.chat = App.cable.subscriptions.create("ChatChannel", {
  connected: function() {
    console.log("Conectado")
  },
  disconnected: function() {

  },
  received: function(data) {
    var mensajes = $('#chatbox');
    mensajes.append(data['mensaje']);
    mensajes.scrollTop(mensajes[0].scrollHeight);
  }
});