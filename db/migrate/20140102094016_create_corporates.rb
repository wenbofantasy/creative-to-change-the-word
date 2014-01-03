class CreateCorporates < ActiveRecord::Migration
  def change
    create_table :corporates do |t|
      t.string :email
      t.string :firm_net
      t.string :firm_scale
      t.string :pinyin
      t.string :sign_address
      t.string :hope_work
      t.string :seek_status
      t.string :contact_address
      t.string :firm_name
      t.string :firm_tel
      t.string :manager_name
      t.string :manager_contact
      t.string :hope_salary
      t.string :expaction_job
      t.text :experience_year
      t.text :language_ability
      t.text :year_get
      t.text :certificate
      t.text :skill

      t.timestamps
    end
  end
end
