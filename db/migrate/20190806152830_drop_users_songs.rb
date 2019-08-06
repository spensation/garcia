class DropUsersSongs < ActiveRecord::Migration[6.0]
  def change
  	drop_table :users_songs
  end
end
