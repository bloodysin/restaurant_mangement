class Cuisine < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 20 },
                    uniqueness: { case_sensitive: false }

  has_many :provideds
end
