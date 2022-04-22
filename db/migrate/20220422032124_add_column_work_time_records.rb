class AddColumnWorkTimeRecords < ActiveRecord::Migration[7.0]
  def up
    add_column :work_time_records, :user_id, :integer
  end
  
  def down
    remove_column :work_time_records, :user
  end
end
