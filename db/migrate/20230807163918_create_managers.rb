class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.references :department, null: false, foreign_key: true
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
