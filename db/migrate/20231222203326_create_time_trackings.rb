class CreateTimeTrackings < ActiveRecord::Migration[7.0]
  def change
    create_table :time_trackings do |t|
      t.references :task, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
