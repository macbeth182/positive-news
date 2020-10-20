class RemoveNicknameFromNews < ActiveRecord::Migration[5.2]
  def change
    remove_column :news, :nickname, :text
  end
end
