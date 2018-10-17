class AddCareerToExtension < ActiveRecord::Migration[5.1]
  def change
    add_reference :extensions, :career, foreign_key: true
  end
end
