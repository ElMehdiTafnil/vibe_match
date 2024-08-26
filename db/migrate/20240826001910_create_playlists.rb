class CreatePlaylists < ActiveRecord::Migration[7.1]
  def change
    create_table :playlists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :spotify_id
      t.text :song_ids

      t.timestamps
    end
  end
end
