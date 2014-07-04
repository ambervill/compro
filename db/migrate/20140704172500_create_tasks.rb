class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :lesson, index: true
      t.integer :level
      t.text :xml

      t.timestamps
    end
  end
end
