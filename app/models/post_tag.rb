class Post_Tag < ApplicationRecord
    belongs_to :post
    belongs_to :tag
end