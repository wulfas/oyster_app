class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :oyster

validates :comment, :presence => true
validates :date, :presence => true
validates :location, :presence => true
validates :rating, :presence => true


end
