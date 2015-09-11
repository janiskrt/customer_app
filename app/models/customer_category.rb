# model for customer category
class Customer_category < ActiveRecord::Base
  has_one :customer
  belongs_to :categorie
end
