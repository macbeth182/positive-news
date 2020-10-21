class AddTitleToScrapings < ActiveRecord::Migration[5.2]
  def change
    add_column :scrapings, :title, :string
  end
end
