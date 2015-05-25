class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :oyster

end
