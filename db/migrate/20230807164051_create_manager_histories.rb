class CreateManagerHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :manager_histories do |t|
      t.references :manager, null: false, foreign_key: true
      t.integer :experience

      t.timestamps
    end
  end
end
