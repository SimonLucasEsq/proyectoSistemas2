class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.integer :hours
      t.references :student, foreign_key: true
      t.references :extension, foreign_key: true

      t.timestamps
    end
  end
end
