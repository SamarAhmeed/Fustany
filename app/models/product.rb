class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :favorites
  has_many :users, through: :favorites

  validates_presence_of :pro_name
end
