class DropSongsusersTable < ActiveRecord::Migration[6.0]
  def change
  	drop_table :songs_users
  end
end
