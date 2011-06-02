class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.references :project
      t.string :description, :default => 'initial'
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
