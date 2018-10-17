class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :ci
      t.string :hours
      t.references :career, foreign_key: true

      t.timestamps
    end
  end
end
