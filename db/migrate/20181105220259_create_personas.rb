class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.string :tipo_documento
      t.string :num_documento
      t.string :tipo_persona
      t.string :telefono
      t.integer :usuario_id

      t.timestamps
    end
  end
end
