class Goal < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :profile
end
