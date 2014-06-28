class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|

      t.string :title

      t.text :description

      t.integer :cooker_id

      t.integer :person_min
      t.integer :person_max
      
      t.integer :price_min
      t.integer :price_max

      t.datetime :date

      t.attachment :photo

      t.timestamps
    end
  end
end
