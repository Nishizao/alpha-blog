class AddDescriptionToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :description, :text
    add_column :articles, :etapes, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :uptaded_at, :datetime
  end
end
