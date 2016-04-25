class Profile < ActiveRecord::Base
  has_many :goals
  belongs_to :user
end
