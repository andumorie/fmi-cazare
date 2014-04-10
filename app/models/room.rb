class Room < ActiveRecord::Base
  belongs_to :dorm
  belongs_to :user
end
