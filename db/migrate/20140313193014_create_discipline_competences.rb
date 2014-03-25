class CreateDisciplineCompetences < ActiveRecord::Migration
  def change
    create_table :discipline_competences do |t|
      t.integer :discipline_id
      t.integer :competence_id

      t.timestamps
    end
		  add_index :discipline_competences, :competence_id
		  add_index :discipline_competences, :discipline_id
  end
end
