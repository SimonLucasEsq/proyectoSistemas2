class CreateExtensions < ActiveRecord::Migration[5.1]
  def change
    create_table :extensions do |t|
      t.string :name
      t.string :description
      t.date :date_start
      t.date :date_end
      t.references :state, foreign_key: true
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
