class User < ActiveRecord::Base
  has_one :room
  has_one :accomodation
end
