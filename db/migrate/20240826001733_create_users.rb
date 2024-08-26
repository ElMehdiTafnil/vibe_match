class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :spotify_uid
      t.string :spotify_token
      t.string :spotify_refresh_token

      t.timestamps
    end
  end
end
