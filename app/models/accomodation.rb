class Accomodation < ActiveRecord::Base
  has_many :documents, dependent: :destroy
  belongs_to :user
end
