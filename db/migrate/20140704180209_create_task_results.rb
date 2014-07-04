class CreateTaskResults < ActiveRecord::Migration
  def change
    create_table :task_results do |t|
      t.references :task, index: true
      t.references :student, index: true
      t.integer :grade

      t.timestamps
    end
  end
end
