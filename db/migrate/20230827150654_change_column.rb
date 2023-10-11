class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :occupation, :string
  end
end
