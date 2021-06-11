class Recipe < ActiveRecord::Base
has_many :ingredient
belongs_to :user
end
