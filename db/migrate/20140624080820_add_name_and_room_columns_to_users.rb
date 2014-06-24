class AddNameAndRoomColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :room, :string
  end
end
