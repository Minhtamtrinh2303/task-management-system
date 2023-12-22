class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.boolean :priority
      t.string :status
      t.date :completed_date
      t.datetime :reminder_time
      t.references :project, null: false, foreign_key: true
      t.references :task_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
