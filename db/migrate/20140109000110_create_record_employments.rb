class CreateRecordEmployments < ActiveRecord::Migration
  def change
    create_table :record_employments do |t|
      t.references :user
      t.integer :start_year
      t.integer :start_month
      t.integer :end_year
      t.integer :end_month
      t.string :company_name
      t.string :position
      t.string :company_turn
      t.string :company_about
      t.string :salary

      t.timestamps
    end
    add_index :record_employments, :user_id
  end
end
