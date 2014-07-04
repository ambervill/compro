class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :discipline_id
      t.string :name
    end
  end
end
