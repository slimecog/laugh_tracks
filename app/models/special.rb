class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_uniqueness_of :name
  validates_presence_of   :name,
                          :comedian_id
end
