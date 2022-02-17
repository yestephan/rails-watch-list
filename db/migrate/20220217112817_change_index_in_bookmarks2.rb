class ChangeIndexInBookmarks2 < ActiveRecord::Migration[6.1]
  def change
    remove_index :bookmarks, :list_id
    add_index :bookmarks, :list_id, unique: true
  end
end
