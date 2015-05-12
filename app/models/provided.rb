class Provided < ActiveRecord::Base
  enum week: { Monday: 1, Tuesday: 2, Wednesday: 3, Thursday: 4, Friday: 5 }

  validates :cuisine_id, presence: true
  validates :week, presence: true
  validates :is_evening, presence: true

  belongs_to :cuisine 
end
