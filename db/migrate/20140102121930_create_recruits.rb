class CreateRecruits < ActiveRecord::Migration
  def change
    create_table :recruits do |t|
      t.string :comepany_name
      t.string :job_name
      t.string :first_category
      t.string :first_name
      t.string :second_category
      t.string :second_name
      t.string :work_adress
      t.string :salary
      t.string :education
      t.string :vacancies
      t.string :recruitment
      t.string :work_experience
      t.string :manager_experience
      t.text :job_description

      t.timestamps
    end
  end
end
