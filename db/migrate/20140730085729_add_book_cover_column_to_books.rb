class AddBookCoverColumnToBooks < ActiveRecord::Migration
  def self.up
    add_attachment :books, :bookCover
  end

  def self.down
    remove_attachment :books, :bookCover
  end
end
