class User < ActiveRecord::Base
has_many :recipe
has_many :ingredient
has_secure_password
end
