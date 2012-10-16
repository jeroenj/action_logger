class CreateActionLogs < ActiveRecord::Migration
  def self.up
    create_table :action_logs do |t|
      t.integer :sender_id
      t.string :sender_type
      t.string :action
      t.string :source
      t.string :ip
      t.text :data
      t.integer :admin_id
      t.timestamps
    end
    add_index :action_logs, [:sender_type, :sender_id]
  end

  def self.down
    drop_table :admin_notes
  end
end
