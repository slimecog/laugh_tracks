class Comedian < ActiveRecord::Base
  has_many :specials
  validates_uniqueness_of :name
  validates_presence_of   :name,
                          :age
end
