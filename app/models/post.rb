class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    # belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    # belongs_to :reviwer, class_name: 'User', foreign_key: 'review_id'
    has_many :likes
    has_many :likers, -> { distinct }, through: :likes, source: :user
end
