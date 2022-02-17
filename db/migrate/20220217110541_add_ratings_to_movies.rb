class AddRatingsToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :ratings, :decimal, precision: 2, scale: 1
  end
end
