class CreateManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :description
      t.string :place
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
