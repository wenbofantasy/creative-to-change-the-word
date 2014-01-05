class AddChooseToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :users, :choose
  end

  def self.down
    remove_attachment :users, :choose
  end
end
