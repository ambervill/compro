class Speciality < ActiveRecord::Base
  attr_accessible :code, :description, :name
  has_many :speciality_competences
  has_many :competences, through: :speciality_competences
  
   # {"1"=>{"1"=>"1", "5"=>"1"}, "2"=>{"2"=>"1"}, "3"=>{"2"=>"1"}}
  def self.save_competences(spec_comp_array)
    spec_comp_array.each_pair do |speciality_id, competences|
    
      logger.debug speciality_id.to_s + "->"+competences.to_s
      Speciality.find(speciality_id).competences = Competence.where(id: competences.keys)
    end
  end
end
