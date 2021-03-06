class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :chats, dependent: :destroy
  has_many :user_rooms, dependent: :destroy

  # フォローする側
  # has_many :relationships, foreign_key: :followed_id
  # フォローする人がrelationshipsを経由してフォローしてる人を全員取ってくる
  # has_many :followeds, through: :relationships, source: :follwer

  # フォローされる側
  # relationshipにすると重複してしまうため、reverse_of_relationshipsと命名する。
  # has_many :reverse_of_relationships, class_name: 'relationships', foreign_key: :follower_id
  # フォローされている人が、relationshipsを経由して自分をフォローしている人を全員取ってくる
  # has_many :followers, through: :reverse_of_relationships, source: :followed
end
