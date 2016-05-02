class CreateBookByAuthors < ActiveRecord::Migration
  def change
    create_table :book_by_authors do |t|

      t.timestamps null: false
    end
  end
end
