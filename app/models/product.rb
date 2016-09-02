class Product < ApplicationRecord
  validates :name, presence:true
  validates :description, length: {minimum:10}
end

