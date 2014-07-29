class ChangeColumnKeywordsToArray < ActiveRecord::Migration
  def change
  	remove_column :books, :keywords
  	add_column :books, :keywords, :text, array: true, default: [] 
  end
end
