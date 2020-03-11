class CreateMensajes < ActiveRecord::Migration[5.2]
  def change
    create_table :mensajes do |t|
      t.text :cuerpo
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
