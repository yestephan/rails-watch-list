class RemoveIndexFromBookmark < ActiveRecord::Migration[6.1]
  def change
    remove_index :bookmarks, :list_id
    remove_index :bookmarks, :movie_id
    add_index :bookmarks, :list_id
    add_index :bookmarks, :movie_id
  end
end
