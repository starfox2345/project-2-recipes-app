class User < ActiveRecord::Base
has_many :recipe
has_many :ingredient
end
