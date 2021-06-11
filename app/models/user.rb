class User < ActiveRecord::Base
has_many :recipe
has_many :ingredient
validates :email, :password, :presence: true
has_secure_password
end
