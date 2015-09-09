# Model for customers
class Customer < ActiveRecord::Base
  belongs_to :user
end
