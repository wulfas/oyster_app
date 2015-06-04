class Oyster < ActiveRecord::Base
  has_many :reviews


  # oyster.average_rating => 3.5
  def average_rating
    ratings = []
    self.reviews.each do |r|
      ratings.push(r.rating)
    end
    ratings.sum.to_f / ratings.count
  end

  # oyster.my_rating => 3.5
  def my_rating
    ratings = []
    self.reviews.each do |r|
      ratings.push(r.rating)
    end
    ratings.sum.to_f / ratings.count
  end

  # creates validations so that an oyster is only added once and no blank cells allowed
validates :name, :presence => true, :uniqueness => true
validates :description, :presence => true


    # for each review, get the rating
    # for all ratings, get the average
    # return the average

end
