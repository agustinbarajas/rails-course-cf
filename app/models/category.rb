class Category < ApplicationRecord
    has_many :has_category
    has_many :articles, through: :has_category
end
