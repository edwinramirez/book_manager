class AddPublisherHouseToBook < ActiveRecord::Migration
  def change
  	add_reference :books, :publisher_house, index: true
  end
end
