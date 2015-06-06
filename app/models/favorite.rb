class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :oyster
  has_many :oysters

  validates :user, :presence => :user, :uniqueness => { :scope => :oyster }


  #@my_reviews = current_user.reviews

  #if @review.oyster_id = nil
  #    redirect_to "/delete_review/<%= review.id %>"
  #else
  #    redirect_to "/reviews"
  #end

end
