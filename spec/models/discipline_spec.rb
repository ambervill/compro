require 'spec_helper'

describe Discipline do
  describe "saving competences" do
    before do
      @discipline1 = Discipline.create(name: "dis1")
      @discipline2 = Discipline.create(name: "dis2")
      (1..5).each do |i|
        Competence.create(name: i.to_s)
      end
      @flag={"1"=>{"1"=>"1", "5"=>"1"}, "2"=>{"2"=>"1"}}
      
    end
    it "should save" do
      Discipline.save_competences(@flag)
      @discipline1.competences.should have(2).items
      @discipline2.competences.should have(1).items
    end
  end
end
