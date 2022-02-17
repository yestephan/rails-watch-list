class ChangeIndexInBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_index :bookmarks, :movie_id
  end
end
