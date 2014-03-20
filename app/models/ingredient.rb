class Ingredient < ActiveRecord::Base
  has_many :ingredient_post_flavors
  has_many :post_flavors, through: :ingredient_post_flavors, source: :flavor


  has_many :ingredient_pre_flavors
  has_many :pre_flavors, through: :ingredient_pre_flavors, source: :flavor
end
