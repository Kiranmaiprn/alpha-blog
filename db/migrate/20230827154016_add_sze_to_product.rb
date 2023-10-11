class AddSzeToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :size, :string
    add_column :products, :name, :string
  end
end
