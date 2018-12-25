class AddEmailToProfessor < ActiveRecord::Migration[5.1]
  def change
    add_column :professors, :email, :string
  end
end
