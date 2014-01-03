class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.datetime :first_time
      t.datetime :last_time
      t.string :firm_name
      t.string :postition
      t.string :post_job
      t.string :salary
      t.text :work_profile
      t.references :user

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
