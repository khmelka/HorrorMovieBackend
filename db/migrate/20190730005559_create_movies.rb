class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.string :sum
      t.integer :release_year

      t.timestamps
    end
  end
end
