class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films, force: true do |t|
      t.string :title
      t.integer :release_year
      t.string :synopsis
      t.string :country
      t.integer :duration
      t.references :director, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
