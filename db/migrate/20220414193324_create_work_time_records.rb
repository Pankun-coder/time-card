class CreateWorkTimeRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :work_time_records do |t|
      t.time :work_from
      t.time :work_to
      t.time :break_from
      t.time :break_to

      t.timestamps
    end
  end
end
