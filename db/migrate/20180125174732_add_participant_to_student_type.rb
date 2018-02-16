class AddParticipantToStudentType < ActiveRecord::Migration[5.1]
  def change
    add_column :student_types, :participant, :string
  end
end
