class CreateActividads < ActiveRecord::Migration[5.1]
  def change
    create_table :actividads do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :persona_id

      t.timestamps
    end
  end
end
