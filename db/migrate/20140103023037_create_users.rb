class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :pinyin
      t.boolean :sex
      t.datetime :date_birth
      t.string :accounts
      t.string :country
      t.integer :number
      t.string :landline
      t.string :mobile
      t.integer :zip_code
      t.string :contact_address
      t.string :salary_expectation
      t.string :job_status
      t.string :excepetation_industry
      t.string :excepetation_job
      t.text :experience_year
      t.text :language_ability
      t.string :revenue
      t.text :certificates
      t.text :skill
      t.string :choose_file

      t.timestamps
    end
  end
end
