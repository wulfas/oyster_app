class Oyster < ActiveRecord::Base
  has_many :reviews, :dependent => :destroy
  has_many :favorites, :dependent => :destroy



  # creates validations so that an oyster is only added once and no blank cells allowed
validates :name, :presence => true, :uniqueness => true
validates :description, :presence => true


    # for each review, get the rating
    # for all ratings, get the average
    # return the average

end
