class Author < ActiveRecord::Base
	has_many :book_by_authors
	has_many :books, through: :book_by_authors, dependent: :destroy

	validates :first_name, :last_name, presence: true
end