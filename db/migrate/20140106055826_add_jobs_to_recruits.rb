class AddJobsToRecruits < ActiveRecord::Migration
  def change
    add_column :recruits, :jobs, :string
  end
end
