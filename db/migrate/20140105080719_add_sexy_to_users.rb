class AddSexyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sexy, :string
  end
end
