class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :oyster
  has_many :oysters

  validates :user, :presence => :user, :uniqueness => { :scope => :oyster }




end
