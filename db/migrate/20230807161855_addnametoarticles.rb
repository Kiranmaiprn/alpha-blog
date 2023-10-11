class Addnametoarticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :title
    remove_column :articles, :description
    add_column :articles, :name, :string
  end
end
