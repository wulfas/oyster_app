class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :oyster
  has_many :oysters

end
