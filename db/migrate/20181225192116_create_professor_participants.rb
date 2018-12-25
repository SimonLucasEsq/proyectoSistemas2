class CreateProfessorParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :professor_participants do |t|
      t.references :extension, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
