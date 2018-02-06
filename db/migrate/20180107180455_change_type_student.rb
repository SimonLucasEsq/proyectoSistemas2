class ChangeTypeStudent < ActiveRecord::Migration[5.1]
  def up
    change_table :students do |t|
      t.change :hours, 'integer USING CAST(hours AS integer)'
    end
  end

  def down
    change_table :students do |t|
      t.change :hours, :string
    end
  end
end
