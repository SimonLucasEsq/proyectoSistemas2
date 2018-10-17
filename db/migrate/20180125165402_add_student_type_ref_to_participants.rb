class AddStudentTypeRefToParticipants < ActiveRecord::Migration[5.1]
  def change
    add_reference :participants, :student_type, foreign_key: true
  end
end
