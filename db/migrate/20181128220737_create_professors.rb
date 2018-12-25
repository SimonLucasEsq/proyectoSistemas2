class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :last_name
      t.references :career, foreign_key: true
      t.string :phone
      t.string :ci

      t.timestamps
    end
  end
end
