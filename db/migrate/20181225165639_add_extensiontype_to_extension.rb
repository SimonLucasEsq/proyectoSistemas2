class AddExtensiontypeToExtension < ActiveRecord::Migration[5.1]
  def change
    add_reference :extensions, :extension_type, foreign_key: true
  end
end
