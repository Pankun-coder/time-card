class AddUserToWorkTimeTable < ActiveRecord::Migration[7.0]
  def change
    add_column :work_time_records, :user, :string
  end
end
