class RemoveRatingsFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :ratings
  end
end
