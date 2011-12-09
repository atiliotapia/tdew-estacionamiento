class CreateEstacionamientos < ActiveRecord::Migration
  def change
    create_table :estacionamientos do |t|
      t.string :local
      t.integer :numero_autos
      t.integer :capacidad_total
      t.string :address
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps
      t.timestamps
    end
  end
end
