class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :description, :occupation
  end
end
