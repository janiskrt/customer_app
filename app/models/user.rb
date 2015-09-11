# Model for users
class User < ActiveRecord::Base
  has_many :customers
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "35x35>" }, default_url: 'user.jpg'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/ 
  has_secure_password
end
