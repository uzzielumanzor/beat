class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :petition
      t.string :title
      t.string :artist
      t.string :album
      t.string :year
      t.string :image
      t.string :length
      t.string :number

      t.timestamps
    end
  end
end
