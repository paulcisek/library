class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :coverImage
      t.string :title
      t.string :author
      t.string :releaseDate
      t.string :string
      t.string :keywords
      t.string :string

      t.timestamps
    end
  end
end
