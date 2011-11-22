class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :codigo
      t.string :nombre
      t.timestamps
    end
  end
end
