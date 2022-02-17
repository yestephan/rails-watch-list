class AddRatingToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :rating, :decimal, precision: 2, scale: 1
  end
end
