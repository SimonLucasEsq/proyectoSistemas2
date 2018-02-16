class CreateAttacheds < ActiveRecord::Migration[5.1]
  def change
    create_table :attacheds do |t|
      t.string :descripcion
      t.date :fecha_subida
      t.references :investigation, foreign_key: true

      t.timestamps
    end
  end
end
