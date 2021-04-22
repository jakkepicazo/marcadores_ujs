class Category < ApplicationRecord
  belongs_to :category, :class_name => "Category", optional: true, :foreign_key => "category_id"
  has_many :subcategories, :class_name => "Category", dependent: :destroy
  has_many :beermarks
end
