class User < ApplicationRecord
  has_secure_password

  has_many :posts

  # Liked posts

  has_many :likes
  has_many :liked_posts, through: :likes, source: :post

  # Followers (people who follow me)

  has_many :followings
  has_many :followers, through: :followings

  # Followees (people who I follow)

  has_many :reverse_followings, class_name: 'Following', foreign_key: 'follower_id'
  has_many :followees, through: :reverse_followings

  # Trades, Buyers and Sellers

  # As a seller
  has_many :sales, foreign_key: :seller_id, class_name: 'Trade'
  has_many :buyers, through: :sales
  has_many :customers, through: :sales, source: :buyer

  # As a buyer
  has_many :purchases, foreign_key: :buyer_id, class_name: 'Trade'
  has_many :sellers, through: :purchases
end
