class Discipline < ActiveRecord::Base
  attr_accessible :name
  has_many :discipline_competences
  has_many :competences, through: :discipline_competences
end
