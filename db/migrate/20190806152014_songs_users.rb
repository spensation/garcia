class SongsUsers < ActiveRecord::Migration[6.0]
  def change
  	create_table :songs_users do |t|
      t.integer :user_id
      t.integer :song_id

      t.timestamps
    end
  end
end
