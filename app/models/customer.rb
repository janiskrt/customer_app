# Model for customers
class Customer < ActiveRecord::Base
  belongs_to :user
  has_one :customer_category
end
