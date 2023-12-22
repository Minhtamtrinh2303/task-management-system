class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :report_name
      t.text :parameters
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
