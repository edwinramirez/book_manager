class Book < ActiveRecord::Base
	has_many :book_by_authors
	has_many :authors, through: :book_by_authors, dependent: :destroy
	belongs_to :publisher_house

	validates :title, :pages, :published_at, presence: true
	validates :title, length: {in: 2..150}
	validates :pages, numericality: {
		only_integer: true,
		greater_than: 0
	}

	def self.search(search)
		# Find out how is the 'rails' way of doing a LEFT JOIN.
		joins('LEFT JOIN publisher_houses on publisher_houses.id = books.publisher_house_id').
					where('books.title LIKE ? OR publisher_houses.name LIKE ?', "%#{search}%", "%#{search}%").order(:title)
	end
end
