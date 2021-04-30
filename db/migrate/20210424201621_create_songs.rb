class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string 'title'
      t.string 'artist'
      t.string 'album'
      t.string 'genre'
      t.datetime 'release_date'
      t.timestamps
    end
  end
end
