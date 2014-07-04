class CreateDisciplineResults < ActiveRecord::Migration
  def change
    create_table :discipline_results do |t|
      t.references :discipline, index: true
      t.references :student, index: true
      t.integer :grade

      t.timestamps
    end
  end
end
