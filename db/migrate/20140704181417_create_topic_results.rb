class CreateTopicResults < ActiveRecord::Migration
  def change
    create_table :topic_results do |t|
      t.references :topic, index: true
      t.references :student, index: true
      t.integer :grade

      t.timestamps
    end
  end
end
