class Topic < ActiveRecord::Base
  belongs_to :discipline
  has_many :lessons
end
