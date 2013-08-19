class Tweet < ActiveRecord::Base
  attr_accessible :status, :zombie_id
  validates :status, presence: true, length: { maximum: 140 }
  validates :zombie_id, presence: true
  belongs_to :zombie
end
