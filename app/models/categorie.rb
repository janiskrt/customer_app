class Categorie < ActiveRecord::Base
  has_many :customer_category
end
