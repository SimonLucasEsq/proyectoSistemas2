class RemoveTypeFromStudentType < ActiveRecord::Migration[5.1]
  def change
    remove_column :student_types, :type, :string
  end
end
