class AddMonthsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :month, :integer
    add_column :users, :day, :integer
  end
end
