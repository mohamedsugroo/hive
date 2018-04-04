class Comment < ApplicationRecord
  belongs_to :video
  belongs_to :user
  has_many :replies
end
