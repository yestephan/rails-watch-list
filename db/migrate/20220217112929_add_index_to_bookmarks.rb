class AddIndexToBookmarks < ActiveRecord::Migration[6.1]
  def change
    add_index :bookmarks, :movie_id, unique: true
  end
end
