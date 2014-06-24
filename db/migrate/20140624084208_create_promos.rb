class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|
      t.string :codename
      t.string :label

      t.timestamps
    end
  end
end
