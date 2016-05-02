class AddColumnToBookByAuthor < ActiveRecord::Migration
  def change
  	add_column :book_by_authors, :book_id, :integer
  	add_column :book_by_authors, :author_id, :integer
  end
end
