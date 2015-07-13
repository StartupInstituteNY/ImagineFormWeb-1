class AddUserIdToMusicfiles < ActiveRecord::Migration
  def change
    add_column :musicfiles, :user_id, :integer
    add_index :musicfiles, :user_id
  end
end
