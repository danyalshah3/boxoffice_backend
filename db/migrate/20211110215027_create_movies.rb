class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :rated
      t.string :released
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :writer
      t.string :actor
      t.string :plot
      t.string :language
      t.string :awards
      t.string :poster_img
      t.string :imdb_rating
      t.string :production
      t.string :box_office
      t.string :trailer

      t.timestamps
    end
  end
end
