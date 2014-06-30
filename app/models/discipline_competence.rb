class DisciplineCompetence < ActiveRecord::Base
  #attr_accessible :competence_id, :discipline_id
  belongs_to :competence
  belongs_to :discipline
end
