class Relationship < ApplicationRecord
  # フォローするユーザーに結びついている
  # belongs_to :followed_id, class_name: 'User'
  # フォローされるユーザーに結びついている
  # belongs_to :follower_id, class_name: 'User'

end
