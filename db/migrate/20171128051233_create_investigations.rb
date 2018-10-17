class CreateInvestigations < ActiveRecord::Migration[5.1]
  def change
    create_table :investigations do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
