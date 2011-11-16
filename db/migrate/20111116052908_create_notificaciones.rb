class CreateNotificaciones < ActiveRecord::Migration
  def change
    create_table :notificaciones do |t|
      t.string :email
      t.string :mensaje
      t.string :dia
      t.string :hora
      t.string :notificacion

      t.timestamps
    end
  end
end
