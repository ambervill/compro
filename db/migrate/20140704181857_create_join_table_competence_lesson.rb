class CreateJoinTableCompetenceLesson < ActiveRecord::Migration
  def change
    create_join_table :competences, :lessons do |t|
       t.index [:competence_id, :lesson_id]
       t.index [:lesson_id, :competence_id]
    end
  end
end
