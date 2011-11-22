class CreateNotificaciones < ActiveRecord::Migration
  def change
    create_table :notificaciones do |t|
      t.string :dia
      t.string :hora
      t.timestamps
    end
  end
end
