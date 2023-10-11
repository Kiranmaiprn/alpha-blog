class ChangeColumnUser < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :occupation, :text
  end
  def down
    change_column :users, :occupation, :string
  end
end
