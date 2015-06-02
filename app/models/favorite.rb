class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :oyster
  belongs_to :review


@user.first_name

end
