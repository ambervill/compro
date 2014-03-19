class Competence < ActiveRecord::Base
  attr_accessible :description, :name, :competence_type
  has_many :discipline_competences
  has_many :disciplines, through: :discipline_competences 
  has_many :speciality_competences
  has_many :specialities, through: :speciality_competences 
end
