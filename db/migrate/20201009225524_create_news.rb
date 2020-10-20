class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
t.text :nickname
t.text :title
t.text :article
      t.timestamps
    end
  end
end
