class PublisherHouse < ActiveRecord::Base
	has_many :books, dependent: :nullify

	validates :name, uniqueness: { case_sensitive: false }
	validates :name, length: { in: 1..150 }
end