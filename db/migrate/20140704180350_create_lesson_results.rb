class CreateLessonResults < ActiveRecord::Migration
  def change
    create_table :lesson_results do |t|
      t.references :lesson, index: true
      t.references :student, index: true
      t.integer :grade

      t.timestamps
    end
  end
end
