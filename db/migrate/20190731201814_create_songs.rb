class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :author_id
      t.integer :album_id
      t.integer :genre_id
      t.integer :user_id

      t.timestamps
    end
  end
end
