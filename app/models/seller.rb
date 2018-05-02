class Seller < ApplicationRecord
  has_and_belongs_to_many :buyers
end
