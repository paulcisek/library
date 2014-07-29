class ChangeReleaseDateFormat < ActiveRecord::Migration
  def change
  	remove_column :books, :releaseDate
  	add_column :books, :releaseDate, :date 
  end
end
