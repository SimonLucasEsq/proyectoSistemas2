class CreateStudentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :student_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
