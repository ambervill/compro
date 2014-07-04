class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :topic_id
      t.integer :discipline_id
      t.string :caption

      t.timestamps
    end
  end
end
