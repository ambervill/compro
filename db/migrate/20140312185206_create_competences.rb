class CreateCompetences < ActiveRecord::Migration
  def change
    create_table :competences do |t|
      t.string :name
      t.string :competence_type
      t.string :description

      t.timestamps
    end
  end
end
