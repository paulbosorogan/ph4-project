class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :runtime
      t.string :director
      t.string :starring
      t.string :short
      t.string :image_url
      t.string :trailer
      t.string :genre

      t.timestamps
    end
  end
end
