class RemoveColumnWorkTimeRecords < ActiveRecord::Migration[7.0]
  def up
    remove_column :work_time_records, :user
  end
  
  def down
    add_column :work_time_records, :user, :string
  end
end
