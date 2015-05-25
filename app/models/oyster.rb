class Oyster < ActiveRecord::Base
  has_many :reviews

  # oyster.average_rating => 3.5
  def average_rating
    ratings = []
    self.reviews.each do |r|
      ratings.push(r.rating)
    end
    ratings.sum.to_f / ratings.count

    # for each review, get the rating
    # for all ratings, get the average
    # return the average
  end
end
