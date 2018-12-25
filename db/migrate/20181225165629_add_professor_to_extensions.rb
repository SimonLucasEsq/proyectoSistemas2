class AddProfessorToExtensions < ActiveRecord::Migration[5.1]
  def change
    add_reference :extensions, :professor, foreign_key: true
  end
end
