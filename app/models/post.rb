class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  #valid post data only
  validates :title, :body, :price, :depart_from, :depart_to, :departure_time, presence: true

end
