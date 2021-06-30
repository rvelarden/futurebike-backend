class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :image
      t.string :location
      t.string :category
      t.integer :price_day
      t.integer :price_week
      t.integer :price_month
      t.integer :price_year
      t.integer :number_of_bikes
      t.timestamps
    end
  end
end
