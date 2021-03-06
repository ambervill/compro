class Discipline < ActiveRecord::Base
 
  has_many :discipline_competences
  has_many :competences, through: :discipline_competences
  has_many :topics
  has_many :lessons, through: :topics
  
 # {"1"=>{"1"=>"1", "5"=>"1"}, "2"=>{"2"=>"1"}, "3"=>{"2"=>"1"}}
  def self.save_competences(disc_comp_array)
    disc_comp_array.each_pair do |discipline_id, competences|
    
      logger.debug discipline_id.to_s + "->"+competences.to_s
      Discipline.find(discipline_id).competences = Competence.where(id: competences.keys)
    end
  end
end
