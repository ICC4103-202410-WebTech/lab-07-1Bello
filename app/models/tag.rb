class Tag < ApplicationRecord
    has_many :post_tags
    has_many :post, through: :post_tags

    validates :name, presence: {message: "The Tag has no name"}, uniqueness: {message: "The Tag name is not unique"}

end