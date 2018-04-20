class User < ApplicationRecord
  has_secure_password
  has_many :posts

  has_many :likes # join table
  has_many :liked_posts, through: :likes, source: :post

  has_many :followings # join table
  has_many :followers, through: :followings # source: :follower

  # The following is an error since the `followings` relationship matches following#user_id to user#id.
  # What is required is a new relationship that matches following#follower_id to user#id.
  # has_many :followees, through: :followings

  has_many :reverse_followings, class_name: 'Following', foreign_key: 'follower_id' # join table
  has_many :followees, through: :reverse_followings # source: :followee
end
