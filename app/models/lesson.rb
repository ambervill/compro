class Lesson < ActiveRecord::Base
  belongs_to :topic
  belongs_to :discipline
  has_many :tasks
end
