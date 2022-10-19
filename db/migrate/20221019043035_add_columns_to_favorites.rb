class AddColumnsToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :image, :text
    add_column :favorites, :content, :text
  end
end
