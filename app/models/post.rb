class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags

    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"

    validates :title, presence: {message: "Title has to exist"}
    validates :content, presence: {message: "There is no content"}
    validates :user_id, presence: {message: "There must be a User_ID"}
    validates :answers_count, presence: {message: "There is no count of answers"}, length: {minimum: 0, message: "The count has to be positive"}
    validates :likes_count, presence: {message: "There is no count of likes"}, length: {minimum: 0, message: "The count has to be positive"}
    validates :published_at, presence: true
end