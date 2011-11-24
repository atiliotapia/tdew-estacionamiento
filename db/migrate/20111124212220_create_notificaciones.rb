class CreateNotificaciones < ActiveRecord::Migration
  def change
    create_table :notificaciones do |t|

      t.timestamps
    end
  end
end
