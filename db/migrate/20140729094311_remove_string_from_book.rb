class RemoveStringFromBook < ActiveRecord::Migration
  def change
  	remove_column :books, :string
  end
end
