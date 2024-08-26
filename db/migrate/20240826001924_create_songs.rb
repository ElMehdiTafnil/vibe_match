class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :spotify_id
      t.string :name
      t.string :artist

      t.timestamps
    end
  end
end
