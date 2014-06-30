class SpecialityCompetence < ActiveRecord::Base
  #attr_accessible :competence_id, :speciality_id
  belongs_to :competence
  belongs_to :speciality
end
