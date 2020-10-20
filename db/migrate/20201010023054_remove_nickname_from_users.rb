class RemoveNicknameFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :Nickname, :text
  end
end
