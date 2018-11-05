class CreateActividadPersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :actividad_personas do |t|
      t.integer :persona_id
      t.integer :actividad_id

      t.timestamps
    end
  end
end
