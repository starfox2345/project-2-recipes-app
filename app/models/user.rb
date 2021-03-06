class User < ActiveRecord::Base
has_many :recipes
validates :email, :password, presence: true
validates :email, uniqueness: true
has_secure_password
end
