class CreatePublisherHouses < ActiveRecord::Migration
  def change
    create_table :publisher_houses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
