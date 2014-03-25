class CreateSpecialityCompetences < ActiveRecord::Migration
  def change
    create_table :speciality_competences do |t|
      t.integer :speciality_id
      t.integer :competence_id
      t.timestamps
    end
		  add_index :speciality_competences, :speciality_id
		  add_index :speciality_competences, :competence_id
  end
end
