class CreateFileAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :file_attachments do |t|
      t.references :task, null: false, foreign_key: true
      t.string :file_name
      t.string :file_path

      t.timestamps
    end
  end
end
